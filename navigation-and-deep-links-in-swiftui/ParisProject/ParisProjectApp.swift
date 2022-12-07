//
//  ParisProjectApp.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/1/22.
//

import SwiftUI

@main
struct ParisProjectApp: App {
    @StateObject var appVM : AppViewModel = AppViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appVM)
                .onOpenURL { url in
                    if appVM.checkDeepLink(url: url) {
                        print("got here from Deep link")
                    }else {
                        print("no deeplink found")
                    }
                }
        }
    }
}
