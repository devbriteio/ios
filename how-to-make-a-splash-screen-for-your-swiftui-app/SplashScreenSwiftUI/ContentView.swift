//
//  ContentView.swift
//  SplashScreenSwiftUI
//
//  Created by Muhammad Osama Naeem on 11/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
            Text("Hello, This is the HomeView")
                .padding()
                .foregroundColor(.white)
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
