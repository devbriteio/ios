//
//  ContentView.swift
//  BlurAndMaterials
//
//  Created by Muhammad Osama Naeem on 11/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
//            Image(systemName: "flame.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150, alignment: .center)
//                .foregroundColor(.black)
//
            VStack {
            Text("Regular")
                .padding(30)
                .background(
                    .regularMaterial,
                    in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                )
                Text("Thin")
                    .padding(30)
                    .background(
                        .thinMaterial,
                        in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                    )
                Text("Ultra Thin")
                    .padding(20)
                    .background(
                        .ultraThinMaterial,
                        in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                    )
                
                Text("Thick")
                    .padding(20)
                    .background(
                        .thickMaterial,
                        in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                    )
                
                Text("Ultra Thick")
                    .padding(20)
                    .background(
                        .ultraThickMaterial,
                        in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                    )
                
            }
        }
    }
}

struct ContentView2: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Text("Regular")
                .padding(30)
                .background(
                    .regularMaterial,
                    in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
