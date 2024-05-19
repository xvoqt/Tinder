//
//  UserProfileView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/16/24.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State public var currentImageIndex = 0
    
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(Color.tinderPink)
                    
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                            .overlay {
                                ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.profileImageURLs.count)
                            }
                        
                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImageURLs.count)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text(user.bio)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "person")
                        
                        Text(user.gender)
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        
                        Text(user.sexuality)
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "book")
                        
                        Text(user.occupation)
                        
                        Spacer()
                    }
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[26])
}
