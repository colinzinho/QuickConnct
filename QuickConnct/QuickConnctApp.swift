//
//  QuickConnctApp.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 04.05.2025.
//

import SwiftUI

@main
struct QuickConnctApp: App {
    
    init() {
            // Convert SwiftUI Color to UIColor
            let accentColor = UIColor(AppTheme.accentColor)

            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = accentColor

            // Optional: remove the shadow line if you want a clean look
            appearance.shadowImage = nil
            appearance.shadowColor = nil

            // Apply appearance globally
            UITabBar.appearance().standardAppearance = appearance
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
