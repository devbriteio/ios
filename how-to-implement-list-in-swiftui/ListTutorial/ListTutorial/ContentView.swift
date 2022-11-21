//
//  ContentView.swift
//  ListTutorial
//
//  Created by Muhammad Osama Naeem on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = Set<UUID>()
    var body: some View {
        NavigationView {
            List(DataSource.continent, id: \.id) { item in
                Text(item.name)
            }
//            List(selection: $selection) {
//                ForEach(DataSource.continent, id: \.id) { continent in
//                    Section(header: Text(continent.name)) {
//                        ForEach(continent.countries, id: \.id) { country in
//                            Text(country.countryName)
//                        }
//                    }
//
//                }
//            }.navigationTitle("🌎 World")
//            .toolbar {
//                EditButton()
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
