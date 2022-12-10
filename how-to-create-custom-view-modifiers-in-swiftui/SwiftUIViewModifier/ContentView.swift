//
//  ContentView.swift
//  SwiftUIViewModifier
//
//  Created by Muhammad Osama Naeem on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var validator = EmailChecker()
    var body: some View {
        VStack {
//            Text("Paris Cafe")
//                .customModifier()
//
//            Text("Hello, world!")
//                .customModifier()
            
            TextField("Email", text: $validator.email)
                .modifier(EmailValidator(value: validator.email, validator: { email in
                    validator.isValid(email)
                }))
                
                
            
//            Button {
//                print("Press Me!")
//            } label: {
//                Text("Press Me")
//                    .modifier(CustomButtonModifier())
//            }
        }.padding()
    }
}


extension Text {
    func customModifier() -> some View {
        modifier(CustomTitleModifier())
    }
}
struct CustomTitleModifier: ViewModifier {
  // 2
  func body(content: Content) -> some View {
    content
      .fontDesign(.serif)
      .lineLimit(1)
      .font(.title)
      .foregroundColor(.blue)
      .bold()
  }
}

struct CustomButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
          .font(.title2)
          .padding(.horizontal, 50)
          .padding(.vertical, 20)
          .foregroundColor(Color.blue)
          .overlay(
            RoundedRectangle(cornerRadius: 8)
              .fill(.blue)
              .opacity(0.3)
          )
    }
}


struct EmailValidator: ViewModifier {
    var value: String
    var validator: (String) -> Bool
    func body(content: Content) -> some View {
        content
            .border(validator(value) ? .green : .secondary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
