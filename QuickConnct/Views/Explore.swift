//
//  Explore.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 11.05.2025.
//

import SwiftUI

struct Explore: View {
    
    let sortOptions = ["Sector", "Phase", "Role"]
    
    var body: some View {
        ScrollView {
            VStack {
                VStack { // .container-fluid
                    VStack {
                        HStack {
                            Image(systemName: "slider.horizontal.3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            
                            Spacer()
                            
                            ForEach(sortOptions, id: \.self) { option in
                                Text(option)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(Color(.systemGray5))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                
                                Spacer()
                            }
                        }
                        .padding(.vertical)
                        
                        VStack(alignment: .leading) {
                            Text("Bike Project")
                                .font(.custom("Raleway-Bold", size: 34))
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Text("by Colinzinho")
                                .foregroundColor(AppTheme.accentColor)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom)
                        
                        Image("bike_project")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12)
                            .shadow(radius: 5)
                            .padding(.bottom)
                        
                        VStack {
                            HStack { //add (alignment: .top) when using image/ logo
                                Text("Sector")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(Color(.systemGray5))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                //Image(systemName: "aqi.medium")
                                //.resizable()
                                //.aspectRatio(contentMode: .fit)
                                //.frame(width: 30, height: 30)
                                
                                Spacer()
                                
                                Text("Mechanical Engineering")
                                    .font(.custom("Raleway", size: 18))
                            }
                            .padding(.bottom)
                            
                            HStack { //add (alignment: .top) when using image/ logo
                                
                                Text("Phase")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(Color(.systemGray5))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                //Image(systemName: "chart.line.flattrend.xyaxis")
                                //.resizable()
                                //.aspectRatio(contentMode: .fit)
                                //.frame(width: 30, height: 30)
                                
                                Spacer()
                                
                                Text("Brainstorming")
                                    .font(.custom("Raleway", size: 18))
                                // Include Separator ';'
                                
                                Text("Phase 1")
                                    .font(.custom("Raleway", size: 18))
                            }
                            .padding(.bottom)
                            
                            HStack { //add (alignment: .top) when using image/ logo
                                
                                Text("Role")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(Color(.systemGray5))
                                    .foregroundColor(.black)
                                    .cornerRadius(20)
                                
                                //Image(systemName: "person.2.badge.key")
                                //.resizable()
                                //.aspectRatio(contentMode: .fit)
                                //.frame(width: 30, height: 30)
                                
                                Spacer()
                                
                                Text("Collaborator")
                                    .font(.custom("Raleway", size: 18))
                            }
                        }
                        .padding() // inner padding: both vertical and horizontal
                        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.black, lineWidth: 1))
                        
                        HStack {
                            // Flexible voice memo bar
                            HStack(alignment: .top) {
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
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity) // <- This is the key
                            
                            // Fixed download icons
                            Image(systemName: "arrow.down.to.line")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                        }
                        .padding(.vertical)
                        
                        VStack {
                            Text("Description")
                                .font(.custom("Raleway-Bold", size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 4)
                            
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        }
                        .padding() // inner padding: both vertical and horizontal
                        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.black, lineWidth: 1))
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
    Explore()
}
