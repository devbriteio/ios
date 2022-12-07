//
//  ContentView.swift
//  AnimationsTutorial
//
//  Created by Muhammad Osama Naeem on 11/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleValue = 1.0

    var body: some View {
        
        
        VStack {
                    Text("Scale this as well")
                        .scaleEffect(scaleValue)

                    Spacer()

                    Button("Run Animation") {
                        animateViews()
                    }
                    .padding(50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(Rectangle())
                    .scaleEffect(scaleValue)
                }
        
        
        
        
        
        
//        VStack {
//            Circle()
//                .padding(100)
//                .foregroundColor(.blue)
//                .overlay(
//                    Circle()
//                        .stroke(.blue)
//                        .padding(100)
//                        .scaleEffect(scaleValue)
//                        .opacity(2 - scaleValue)
//                        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: scaleValue)
//
//
//                ).onAppear {
//                    scaleValue = 2
//                }
//        }
    }
    
    func animateViews() {
            withAnimation(.easeInOut(duration: 2.0)) {
                self.scaleValue = 2.0
            }
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
