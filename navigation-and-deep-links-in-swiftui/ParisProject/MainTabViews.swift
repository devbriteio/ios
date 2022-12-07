//
//  HomeView.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/2/22.
//

import SwiftUI

struct MainTabViews: View {
    @EnvironmentObject var appVM : AppViewModel
    var body: some View {
        TabView(selection: $appVM.currentTab) {
            Text("Home")
                .tag(ParisCafeTab.home)
                .tabItem{
                    Image(systemName: "house.fill")
                }
            SearchView()
                .tag(ParisCafeTab.search)
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Setting")
                .tag(ParisCafeTab.setting)
                .tabItem{
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}

