//
//  Calendar.swift
//  QuickConnct
//
//  Created by Colinzinho Development on 29.05.2025.
//

import SwiftUI

struct CalendarPopUp: View {
    @State private var currentDate = Date() // Since it's @State, changing it triggers UI update
    
    // Simulated event dates
    let eventDates: [Date] = [
        Calendar.current.date(byAdding: .day, value: 3, to: Date())!,
        Calendar.current.date(byAdding: .day, value: 5, to: Date())!,
        Calendar.current.date(byAdding: .day, value: 12, to: Date())!
    ]
    
    private var daysInMonth: [Date] {
        generateDaysInMonth(for: currentDate)
    }
    
    var body: some View {
        VStack {
            // Month & Navigation
            HStack {
                Button(action: {
                    changeMonth(by: -1)
                }) {
                    Image(systemName: "chevron.left")
                        .font(.custom("Raleway", size: 28))
                        .foregroundColor(AppTheme.accentColor)
                }
                
                Spacer()
                
                Text(monthTitle(for: currentDate))
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    changeMonth(by: 1)
                }) {
                    Image(systemName: "chevron.right")
                        .font(.custom("Raleway", size: 28))
                        .foregroundColor(AppTheme.accentColor)
                }
            }
            .padding(.horizontal)
            
            // Day Grid
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 12) {
                ForEach(["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], id: \.self) { day in
                    Text(day).font(.caption).foregroundColor(.gray)
                }
                
                ForEach(daysInMonth, id: \.self) { date in
                    VStack(spacing: 2) {
                        Text("\(Calendar.current.component(.day, from: date))")
                            .foregroundColor(Calendar.current.isDate(date, equalTo: currentDate, toGranularity: .month) ? .primary : .gray) // .primary = black but where is it defined?
                        
                        if eventDates.contains(where: { Calendar.current.isDate($0, inSameDayAs: date) }) {
                            Rectangle()
                                .fill(AppTheme.accentColor)
                                .frame(height: 3)
                                .cornerRadius(2)
                        } else {
                            Spacer().frame(height: 3) // Invisible placeholder so the grid won't shift up or down.
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .padding(.vertical)
    }
    
    private func monthTitle(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter.string(from: date)
    }
    
    private func changeMonth(by value: Int) {
        if let newDate = Calendar.current.date(byAdding: .month, value: value, to: currentDate) {
            currentDate = newDate
        }
    }
    
    private func generateDaysInMonth(for date: Date) -> [Date] {
        guard let monthInterval = Calendar.current.dateInterval(of: .month, for: date),
              let firstWeekStart = Calendar.current.dateInterval(of: .weekOfMonth, for: monthInterval.start)?.start
        else { return [] }
        
        var days: [Date] = []
        for offset in 0..<42 {
            if let day = Calendar.current.date(byAdding: .day, value: offset, to: firstWeekStart) {
                days.append(day)
            }
        }
        return days
    }
}

#Preview {
    CalendarPopUp()
}
