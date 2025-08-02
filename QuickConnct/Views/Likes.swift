//
//  Explore.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 11.05.2025.
//

import SwiftUI

struct Likes: View {
    
    let sortOptions = ["Branche", "Projektphase", "Funktion/ Rolle", "Pensum", "Ort", "Example X", "Example Y"]
    
    var body: some View {
        ScrollView {
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
                            Text("Demos Project")
                                .font(.custom("Raleway-Bold", size: 34))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("by Colinzinho")
                                .foregroundColor(AppTheme.accentColor)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom)
                        
                        VStack {
                            Image("default_project")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxHeight: 200)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        
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
                            
                            HStack(spacing: 16) {
                                // Flexible voice memo bar
                                HStack(spacing: 12) {
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(Circle().fill(Color.white))
                                        .shadow(radius: 1)
                                    
                                    // Placeholder waveform
                                    GeometryReader { geo in
                                        HStack(spacing: 2) {
                                            ForEach(sampleWaveHeights, id: \.self) { height in
                                                RoundedRectangle(cornerRadius: 2)
                                                    .frame(width: 3, height: CGFloat(height))
                                                    .foregroundColor(.black)
                                            }
                                            .frame(maxHeight: .infinity)
                                        }
                                        .frame(maxWidth: .infinity)
                                    }
                                    .frame(height: 40)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 12)
                                .background(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 1))
                                .frame(maxWidth: .infinity) // <- This is the key
                                
                                // Fixed download icons
                                HStack(spacing: 12) {
                                    Image(systemName: "arrow.down.to.line")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                }
                            }
                            .padding(.vertical)
                            
                            VStack {
                                HStack(alignment: .top) {
                                    Text("Cat 1:")
                                        .font(.custom("Raleway-Bold", size: 18))
                                    
                                    Spacer()
                                    
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr")
                                        .lineLimit(2)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding(.bottom)
                                
                                HStack(alignment: .top) {
                                    Text("Cat 2:")
                                        .font(.custom("Raleway-Bold", size: 18))
                                    
                                    Spacer()
                                    
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr")
                                        .lineLimit(2)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding(.bottom)
                                
                                HStack(alignment: .top) {
                                    Text("Cat 3:")
                                        .font(.custom("Raleway-Bold", size: 18))
                                    
                                    Spacer()
                                    
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr")
                                        .lineLimit(2)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                                .padding(.bottom)
                                
                                HStack(alignment: .top) {
                                    Text("Cat 4:")
                                        .font(.custom("Raleway-Bold", size: 18))
                                    
                                    Spacer()
                                    
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr")
                                        .lineLimit(2)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                        }
                    }
                    .padding(.bottom)
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.9, maxHeight: .infinity, alignment: .top)
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity)
        }
        
    }
    // Simulated waveform heights
    let sampleWaveHeights = [10, 14, 20, 30, 36, 42, 50, 42, 36, 30, 20, 14, 10, 5, 10, 14, 2, 1, 7, 8, 9, 13, 15, 19, 22, 35, 40, 50, 51, 33, 29, 20, 25, 26, 15, 13, 6, 4, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1]
}

#Preview {
    Likes()
}
