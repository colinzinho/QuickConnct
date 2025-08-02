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
                    ZStack {
                        Image(systemName: "binoculars")
                            .symbolVariant(.none)
                                        .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 62) // Slightly smaller icon
                                        .padding(.top, 40) // Pull it down a bit visually
                        Text("Explore")
                    }
                }
            Events()
                .tabItem() {
                    Image(systemName: "calendar")
                        .symbolVariant(.none)
                    Text("Events")
                }
            Likes()
                .tabItem() {
                    Image(systemName: "link")
                        .symbolVariant(.none)
                    Text("Likes")
                }
            Chats()
                .tabItem() {
                    Image(systemName: "bubble.left")
                        .symbolVariant(.none)
                    Text("Chats")
                }
            Profile()
                .tabItem() {
                    Image(systemName: "person.crop.circle")
                        .symbolVariant(.none)
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
        .defaultFont() // Applies raleway font size 16 as default
}
