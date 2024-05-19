//
//  UserMatchView.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/16/24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager
    
    var body: some View {
        if show {
            ZStack {
                Rectangle()
                    .fill(Color.black.opacity(0.7))
                    .ignoresSafeArea()
                
                VStack(spacing: 120) {
                    VStack {
                        Image("itsamatch")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal)
                            .padding(.vertical)
                        
                        if let matchedUser = matchManager.matchedUser {
                            Text("You and \(matchedUser.fullname) have liked each other.")
                                .foregroundStyle(.white)
                        }
                    }
                    
                    HStack(spacing: 16) {
                        Image(MockData.users[26].profileImageURLs.first ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .shadow(radius: 4)
                            }
                        
                        if let matchedUser = matchManager.matchedUser {
                            Image(matchedUser.profileImageURLs.first ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 2)
                                        .shadow(radius: 4)
                                }
                        }
                    }
                    
                    VStack(spacing: 16) {
                        NavigationLink(destination: MessagesView()) {
                            Text("Send message")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: 350, height: 44)
                                .background(Color.tinderPink)
                                .clipShape(Capsule())
                        }
                        
                        Button("Keep Swiping") {
                            show.toggle()
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 44)
                        .background(.clear)
                        .clipShape(Capsule())
                        .overlay {
                            Capsule()
                                .stroke(.white, lineWidth: 1)
                                .shadow(radius: 4)
                        }
                    }
                }
            }
        }
    }
}

struct UserMatchView_Previews: PreviewProvider {
    static var previews: some View {
        UserMatchView(show: .constant(true))
            .environmentObject(MatchManager())
    }
}
