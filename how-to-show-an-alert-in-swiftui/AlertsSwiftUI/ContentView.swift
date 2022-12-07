//
//  ContentView.swift
//  AlertsSwiftUI
//
//  Created by Muhammad Osama Naeem on 12/5/22.
//

import SwiftUI
struct Contact : Identifiable {
    var id: String { name }
    var name: String
}
struct ContentView: View {
    @State private var isPresent: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Delete the picture?")
                .font(.headline)

            Button("Delete") {
                isPresent = true
            }

        } .alert(isPresented: $isPresent) {
            Alert(title: Text("Important message"), message: Text("Some message using Alert struct"), dismissButton: .destructive(Text("Delete"), action: {
                print("delete")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
