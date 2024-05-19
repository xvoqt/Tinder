//
//  TinderApp.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//

import SwiftUI

@main
struct TinderApp: App {
    @StateObject var matchManager = MatchManager()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        if application.supportsAlternateIcons {
            application.setAlternateIconName("icon") { error in
                if let error = error {
                    print("Error setting app icon: \(error.localizedDescription)")
                } else {
                    print("App icon set successfully.")
                }
            }
        } else {
            print("Alternate icons not supported.")
        }

        return true
    }
}
