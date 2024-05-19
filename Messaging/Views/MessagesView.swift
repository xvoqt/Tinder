//
//  MessagesView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/18/24.
//

import SwiftUI

struct MessagesView: View {
    @State private var selectedTab = "Messages" // Tracks the selected tab
    @StateObject var matchManager = MatchManager()
    @State private var selectedUser: User?
    @State private var showProfileModal = false // Controls the visibility of the user profile modal
    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                    .padding(.horizontal)
                
                Spacer()
                    Image(systemName: "message.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.tinderPink)
                        .padding(.bottom)
                        .padding(.trailing, 20)
                
                Spacer()
                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                    .padding(.trailing, 20)
            }

            
            .padding(.horizontal, 10)
            
            VStack {
                HStack {
                    Button(action: {
                        selectedTab = "Messages"
                    }) {
                        Text("Messages")
                            .fontWeight(.bold)
                            .foregroundColor(selectedTab == "Messages" ? Color.tinderPink : Color.gray)
                    }
                    .padding(.trailing)
                    
                    Button(action: {
                        selectedTab = "Matches"
                    }) {
                        Text("Matches")
                            .fontWeight(.semibold)
                            .foregroundColor(selectedTab == "Matches" ? Color.tinderPink : Color.gray)
                        NotiView()
                    }
                    
                }
                .padding(.bottom)
            }
            
            ZStack {
                // Messages section
                VStack(alignment: .leading, spacing: 0) {
                    if selectedTab == "Messages" {
                        
                        HStack {
                            Text("Messages")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.tinderPink)
                                .padding(.leading, 20)
                                .padding(.top, 20) // Top padding to align with Recent Matches
                                .padding(.bottom, 10)
                            
                            MsgNotiView()
                        }

                        
                        ScrollView {
                            VStack(spacing: 0) {
                                ForEach(MockData.users, id: \.id) { user in
                                    HStack {
                                        MessageRow(user: user)
                                            .padding(.leading, 20) // Aligns the profile picture with the "Messages" text
                                        Spacer() // Adds a spacer to push the divider to the right edge
                                    }
                                    .padding(.vertical, 10) // Add vertical padding between each message row
                                    
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    Spacer()
                }
                .background(Color(.systemGroupedBackground).ignoresSafeArea())
                
                // Spacer between Messages and Matches sections
                Spacer()
                
                // Matches section
                VStack(alignment: .leading, spacing: 0) {
                    Text("Recent Matches")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.tinderPink)
                        .padding(.horizontal, 20)
                        .padding(.top, 20) // Top padding to align with Recent Matches
                        .padding(.bottom, 10)
                    
                    if selectedTab == "Matches" {
                        ScrollView {
                            VStack(alignment: .leading, spacing: 0) {
                                
                                ForEach(MockData.users, id: \.id) { user in
                                    ProfileMatchGridView()
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    Spacer()
                }
                .opacity(selectedTab == "Matches" ? 1 : 0)
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
