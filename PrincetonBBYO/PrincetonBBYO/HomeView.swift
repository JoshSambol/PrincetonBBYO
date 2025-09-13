//
//  HomeView.swift
//  PrincetonBBYO
//
//  Created by Joshua Sambol on 9/12/25.
//

import SwiftUI

struct HomeView: View{
    @Environment(\.openURL) var openURL
    var body: some View{
        VStack {
            Text("Princeton BBYO")
                .font(.title)
            Text("UPCOMING EVENT!👇")
                .font(.title2)
                .foregroundColor(.green)
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red:232/255, green:232/255, blue:232/255))
                    .frame(width: 350, height: 600)
                VStack {
                    Text("Bond and Battle")
                        .font(.largeTitle)
                        .bold()
                        .italic()
                    Text("📆Sunday, September 28th")
                    Text("🕓1:00PM-4:00PM")
                    Text("""
                         Get ready for the ultimate PAINTBALL fall kickoff! 🍂💥
                         
                         👉 All gear is included
                         👉 $50 at the door (price might drop)
                         👉 Pay when you arrive – Just show up and play.
                         
                         💪 This event is all about bonding, laughing, and having a blast making new BBYO friends.
                         """)
                    .frame(width: 300)
                    .padding()
                    Button("REGISTER") {
                        if let url = URL(string: "https://bbyo.my.site.com") {
                            openURL(url)
                        }
                    }
                    .frame(width: 300, height: 70)
                    .buttonStyle(.borderedProminent)
                }
            }
            
            Spacer() // optional at the end
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // fills screen
    }
}
