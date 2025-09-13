//
//  ContentView.swift
//  PrincetonBBYO
//
//  Created by Joshua Sambol on 9/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Upcoming")
                }
                .tag(0)
            PmView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Prospects/Members")
                }
                .tag(1)
            CalendarView()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Calendar")
                        }
                .tag(2)
                }
            
        }
    }

#Preview {
    ContentView()
}
