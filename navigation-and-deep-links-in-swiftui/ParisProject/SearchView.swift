//
//  SearchView.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/2/22.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var appVM : AppViewModel
    @State var data = DataSource.data
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { cafe in
                    NavigationLink(tag: cafe.id, selection: $appVM.currentDetailCafeID) {
                        DetailView(cafe: cafe)
                    } label: {
                        HStack {
                            Image(cafe.picture)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                            Text(cafe.name)
                        }
                    }
                }
            }.navigationTitle("Search")
        }
    }
}

@ViewBuilder
func DetailView(cafe: ParisCafe)-> some View {
    VStack {
        Image(cafe.picture)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 350)
        Text("⭐️ Rating: ")
        Text(cafe.rating)
    }.navigationTitle(cafe.name)
}

