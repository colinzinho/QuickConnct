//
//  Chats.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 11.05.2025.
//

import SwiftUI

struct Chat: Identifiable {
    let id = UUID()
    let name: String
    let message: String
    let imageName: String
}

struct Chats: View {
    let chats: [Chat] = [
        Chat(name: "John Doe", message: "Hey, are we still on for tonight?", imageName: "iTunesArtwork"),
        Chat(name: "Daisy", message: "Just sent the files.", imageName: "Daisy"),
        Chat(name: "Tania", message: "Let’s grab coffee tomorrow.", imageName: "Tania"),
        Chat(name: "James", message: "I’ll call you in 5.", imageName: "James"),
        Chat(name: "Laura", message: "Meeting was rescheduled.", imageName: "Tania")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        VStack { // .container-fluid
                            VStack {
                                Text("Connections")
                                    .font(.custom("Raleway-Bold", size: 34))
                                //.foregroundColor(AppTheme.primaryColor)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Placeholder ...")
                                    .foregroundColor(AppTheme.accentColor)
                                    .font(.custom("Raleway", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding(.vertical)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.9, maxHeight: .infinity, alignment: .top)
                    }
                    .frame(maxWidth: .infinity)
                    //.background(AppTheme.accentColor)
                    .padding(.bottom)
                    
                    VStack { // .container-fluid
                        VStack {
                            VStack(spacing: 28) { // Increased vertical spacing
                                ForEach(chats) { chat in
                                    NavigationLink(destination: ChatDetailView(chat: chat)) {
                                        HStack(alignment: .center, spacing: 16) {
                                            Image(chat.imageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: UIScreen.main.bounds.width * 0.15,
                                                       height: UIScreen.main.bounds.width * 0.15)
                                                .clipShape(Circle())
                                            
                                            VStack(alignment: .leading, spacing: 6) {
                                                Text(chat.name)
                                                    .font(.custom("Raleway", size: 20))
                                                    .bold()
                                                
                                                Text(chat.message)
                                                    .foregroundColor(.gray)
                                                    .lineLimit(1)
                                            }
                                            
                                            Spacer()
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
                                }
                            }
                            //.padding(.vertical)
                        }
                        .padding(.bottom)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.9, maxHeight: .infinity, alignment: .top)
                }
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity)
            }
        }
        
    }
}

#Preview {
    Chats()
}
