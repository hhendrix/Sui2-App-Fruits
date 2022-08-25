//
//  Sui2_App__FruitsApp.swift
//  Sui2 App  Fruits
//
//  Created by Harry Lopez on 6/04/22.
//

import SwiftUI

@main
struct Sui2_App__FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
