//
//  OnboardingCoordinator.swift
//  SplashScreenSwiftUI
//
//  Created by Muhammad Osama Naeem on 11/20/22.
//

import SwiftUI

struct ViewCoordinator: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            ContentView()
        }else {
            SplashScreen(isActive: $isActive)
        }
    }
}

struct OnboardingCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        ViewCoordinator()
    }
}
