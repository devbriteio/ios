//
//  ContentView.swift
//  ZStackSwiftUITutorial
//
//  Created by Muhammad Osama Naeem on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    var data : [Color] = [.blue, .green, .yellow, .purple, .red]
    @State var offsetval = 0
    var body: some View {
//        ZStack {
//            ForEach(0..<data.count) { i in
//                Rectangle()
//                    .foregroundColor(data[i])
//                    .frame(width: 200, height: 200, alignment: .center)
//                    .cornerRadius(20)
//                    .offset(x: CGFloat(i * offsetval), y: CGFloat(i * offsetval))
//            }
//        }
//        .onAppear {
//            withAnimation(.easeOut(duration: 2)) {
//                offsetval = 10
//            }
//        }
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 200, height: 200, alignment: .center)
                .cornerRadius(20)
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.4)
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(200)

        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
