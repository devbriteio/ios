//
//  ContentView.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/1/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appVM : AppViewModel
    var body: some View {
      MainTabViews()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
