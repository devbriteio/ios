//
//  ContentView.swift
//  ActionSheetSwiftUITutorial
//
//  Created by Muhammad Osama Naeem on 11/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var showOptions: Bool = false
    @State var selection: String = ""
    var body: some View {
        Text("Select your Country: \(selection)")
        Button {
            showOptions = true
        } label: {
            Text("Show Action Sheet")
        }
        .confirmationDialog("Select Countries", isPresented: $showOptions) {
                    ForEach(["🇺🇸 USA", "🇫🇷 France", "🇨🇦 Canada"], id: \.self) { item in
                        Button(item) {
                            selection = item
                        }
                    }
        } message: {
            Text("Select a country")
        }
        
        // iOS 13/14
//        .actionSheet(isPresented: $showOptions) {
//            ActionSheet(title: Text("Select Country"),
//                        buttons: [
//                            .default(Text("🇺🇸 USA")) {
//                                selection = "🇺🇸 USA"
//                            },
//                            .default(Text("🇫🇷 France")) {
//                                selection = "🇫🇷 France"
//                            },
//                            .default(Text("🇨🇦 Canada")) {
//                                selection = "🇨🇦 Canada"
//                            },
//                            .destructive(Text("Cancel"))
//                        ])
//        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
