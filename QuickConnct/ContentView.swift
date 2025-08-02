//
//  ContentView.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 04.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Explore()
                .tabItem() {
                    Image(systemName: "binoculars")
                        .symbolVariant(.none)
                    //Text("Explore")
                }
            Events()
                .tabItem() {
                    Image(systemName: "calendar")
                        .symbolVariant(.none)
                    //Text("Events")
                }
            Likes()
                .tabItem() {
                    Image(systemName: "link")
                        .symbolVariant(.none)
                    //Text("Likes")
                }
            Chats()
                .tabItem() {
                    Image(systemName: "bubble.left")
                        .symbolVariant(.none)
                    //Text("Chat")
                }
            Profile()
                .tabItem() {
                    Image(systemName: "person.crop.circle")
                        .symbolVariant(.none)
                    //Text("Profile")
                }
        }
        .background {
            AppTheme.accentColor
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
        .defaultFont() // Applies raleway font size 16 as default
}
