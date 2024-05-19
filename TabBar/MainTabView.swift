//
//  MainTabView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//


import SwiftUI

public extension Color {
    static let tinderPink = Color(UIColor(red: 0.99, green: 0.16, blue: 0.48, alpha: 1.0))
}

struct MainTabView: View {
    @State private var isTabSelected = false

    var body: some View {
        TabView {
            
            CardStackView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            MessagesView()
                .tabItem { Image(systemName: "bubble") }
                .tag(2)
            
            CurrentUserProfileView(user: MockData.users[26])
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .accentColor(isTabSelected ? .tinderPink : .primary)
        .onAppear {
            isTabSelected = true
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(MatchManager())
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(MatchManager())
    }
}
