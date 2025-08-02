//
//  Events.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 11.05.2025.
//

import SwiftUI

struct Events: View {
    
    @State private var showCalendar = false
    
    let sortOptions = ["Branche", "Projektphase", "Funktion/ Rolle", "Pensum", "Ort", "Example X", "Example Y"]
    
    var body: some View {
        ZStack {
            VStack {
                VStack { // .container-fluid
                    VStack {
                        HStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(sortOptions, id: \.self) { option in
                                        Text(option)
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 8)
                                            .background(Color(.systemGray5))
                                            .foregroundColor(.black)
                                            .cornerRadius(20)
                                    }
                                }
                            }
                            .padding(.vertical)
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Upcoming Events")
                                    .font(.custom("Raleway-Bold", size: 34))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Button(action: {
                                    withAnimation {
                                        showCalendar.toggle()
                                    }
                                }) {
                                    Image(systemName: "calendar")
                                        .font(.custom("Raleway", size: 34))
                                        .foregroundColor(AppTheme.accentColor)
                                }
                            }
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom)
                        
                        GeometryReader { geo in
                            let containerWidth = geo.size.width
                            let spacing: CGFloat = 16
                            let cardWidth = containerWidth - spacing
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: spacing) {
                                    // First Event
                                    VStack(spacing: 0) {
                                        Image("Trade_fair")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 200)
                                            .background(Color.white)
                                            .cornerRadius(12)
                                            .shadow(radius: 5)
                                        
                                        Text("Trade Fair")
                                            .font(.custom("Raleway", size: 26))
                                            .fontWeight(.bold)
                                            .padding(.top, 10)
                                        
                                        HStack {
                                            Text("Los Angeles, CA")
                                                .font(.headline)
                                                .foregroundColor(AppTheme.accentColor)
                                            
                                            Spacer()
                                            
                                            Text("23.05.25")
                                                .font(.headline)
                                                .foregroundColor(AppTheme.accentColor)
                                        }
                                        .padding(.vertical, 6)
                                        
                                        
                                        Text("Join the ultimate Trade Fair for Young Entrepreneurs! Showcase your ideas, connect with investors, and network with fellow innovators. Discover new trends, pitch your projects, and spark collaborations that could shape the future. Don’t miss this opportunity to turn your vision into reality!")
                                            .lineLimit(5)
                                            .truncationMode(.tail)
                                        
                                        NavigationLink(destination: FullTextView()) {
                                            Text("Read more")
                                                .foregroundColor(AppTheme.accentColor)
                                                .padding(.top, 5)
                                        }
                                    }
                                    .padding()
                                    .frame(width: cardWidth)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(12)
                                    
                                    // Second Event
                                    VStack (spacing: 0) {
                                        Image("Lecture_uni")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 200)
                                            .background(Color.white)
                                            .cornerRadius(12)
                                            .shadow(radius: 5)
                                        
                                        Text("Lecture at University")
                                            .font(.custom("Raleway", size: 26))
                                            .fontWeight(.bold)
                                            .padding(.top, 10)
                                        
                                        HStack {
                                            Text("New York, NY")
                                                .font(.headline)
                                                .foregroundColor(AppTheme.accentColor)
                                            
                                            Spacer()
                                            
                                            Text("09.06.25")
                                                .font(.headline)
                                                .foregroundColor(AppTheme.accentColor)
                                        }
                                        .padding(.vertical, 6)
                                        
                                        
                                        Text("Unlock new insights at our exclusive university lecture! Explore cutting-edge topics, engage with experts, and expand your knowledge. This lecture is designed for college students eager to learn and connect with thought leaders. Don’t miss out on this opportunity to broaden your academic horizon!")
                                            .lineLimit(5)
                                            .truncationMode(.tail)
                                        
                                        NavigationLink(destination: FullTextView()) {
                                            Text("Read more")
                                                .foregroundColor(AppTheme.accentColor)
                                                .padding(.top, 5)
                                        }
                                    }
                                    .padding()
                                    .frame(width: cardWidth)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(12)
                                }
                                .padding(.horizontal, spacing / 2)
                            }
                            .scrollTargetBehavior(.paging)
                        }
                        
                        
                        
                        VStack { // Project Description and Categories
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text("Mechanical")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .foregroundColor(AppTheme.primaryColor)
                                        .background(AppTheme.accentColor)
                                        .cornerRadius(10)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("Group of 5")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .foregroundColor(AppTheme.primaryColor)
                                        .background(AppTheme.accentColor)
                                        .cornerRadius(10)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Text("Planned")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .foregroundColor(AppTheme.primaryColor)
                                        .background(AppTheme.accentColor)
                                        .cornerRadius(10)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                
                                HStack {
                                    Text("Bern, CH")
                                    //.frame(maxWidth: .infinity)
                                        .padding()
                                        .foregroundColor(AppTheme.primaryColor)
                                        .background(AppTheme.accentColor)
                                        .cornerRadius(10)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                            .font(.system(size: 14))
                            .padding(.vertical)
                        }
                    }
                    .padding(.bottom)
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.9, maxHeight: .infinity, alignment: .top)
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity)
            
            if showCalendar {
                VisualEffectBlur(blurStyle: .systemMaterial)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            showCalendar = false
                        }
                    }
                
                VStack {
                    //Spacer()
                    
                    CalendarPopUp() // <- Your custom calendar here
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                                .shadow(radius: 10)
                        )
                        .padding(.horizontal)
                }
                //.transition(.move(edge: .bottom)) // Optional animation
                .zIndex(1) // Ensure it's on top
            }
        }
        
    }
}

struct FullTextView: View {
    var body: some View {
        ScrollView {
            Text("This project involves the independent construction of a bicycle. The goal is to select, assemble, and coordinate individual components such as the frame, wheels, brakes, chain, and handlebars. Special attention is given to the selection of high-quality materials and an ergonomic design that ensures comfort and safety. The construction process includes both mechanical work and precise adjustments of the gears and brakes. In the end, the result should be a custom-designed bicycle that is both functional and aesthetically appealing. This project promotes technical understanding, craftsmanship, and creative thinking.")
                .padding()
        }
        .navigationTitle("Full Text")
    }
}

#Preview {
    Events()
}
