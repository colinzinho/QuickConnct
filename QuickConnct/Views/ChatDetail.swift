//
//  ChatDetail.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 30.05.2025.
//

import SwiftUI

struct ChatDetailView: View {
    let chat: Chat
    @Environment(\.dismiss) private var dismiss
    @State private var messageText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.custom("Raleway", size: 20))
                        .foregroundColor(AppTheme.accentColor)
                }
                
                Spacer()
                
                VStack {
                    Text(chat.name)
                        .font(.custom("Raleway-Bold", size: 34))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Project Name")
                        .foregroundColor(AppTheme.accentColor)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                
                Spacer() // balances layout
            }
            .padding(.horizontal)
            .padding(.top)
            
            // Messages
            ScrollView {
                VStack(spacing: 12) {
                    // Receiver message (left)
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Hey! Are we still meeting later?")
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(18)
                            
                            Text("14:32")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack(alignment: .bottom) {
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("Yes, of course. See you at 7!")
                                .padding()
                                .background(AppTheme.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(18)
                            
                            Text("14:34")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Receiver message (left)
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Awesome! Looking forward to it.")
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(18)
                            
                            Text("14:35")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
            
            HStack {
                TextField("Type a message", text: $messageText)
                    .padding(12)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                
                Button(action: {
                    // Handle sending message
                    messageText = ""
                }) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(AppTheme.accentColor)
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(UIColor.systemBackground))
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline) // still needed to avoid default title
    }
}
