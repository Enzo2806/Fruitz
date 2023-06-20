//
//  FruitzApp.swift
//  Fruitz
//
//  Created by Enzo on 2023-06-20.
//

import SwiftUI

@main
struct FruitzApp: App {
    // AppStorage : SiwiftUI property wrapper: store value in device storage using get/set method
    // onboarding is a user defaults key we can reuse
    // isOnboardingViewActive = property name
    // we set its default value
    // When user start the app the very first screen should be onboardingscene
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                onBoardingView()
            }else {
                FruitListView()
            }
        }
    }
}
