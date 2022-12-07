//
//  AppViewModel.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/2/22.
//

import SwiftUI

class AppViewModel: ObservableObject {
    @Published var currentTab: ParisCafeTab = .home
    @Published var currentDetailCafeID: String?
    
    func checkDeepLink(url: URL)->Bool {
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host   else {
            return false
        }
        print(host)
        if host == ParisCafeTab.home.rawValue {
            currentTab = .home
        }else if host == ParisCafeTab.search.rawValue {
            currentTab = .search
        }else if host == ParisCafeTab.setting.rawValue {
            currentTab = .setting
        }else {
            return self.checkInternalDeepLinks(host: host)
        }
        return true
    }
    
    func checkInternalDeepLinks(host: String)-> Bool {
        if let index = DataSource.data.firstIndex(where: { cafe in
            return cafe.id == host
        }){
            currentTab  = .search
            currentDetailCafeID = DataSource.data[index].id
            return true
        }
            
        return false
        
    }
}

enum ParisCafeTab: String {
    case home =  "home"
    case search =  "search"
    case setting = "setting"
}

