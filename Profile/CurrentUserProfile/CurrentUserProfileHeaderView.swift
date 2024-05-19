//
//  CurrentUserProfileHeaderView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/16/24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let user: User

    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(user.profileImageURLs[1])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                
                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundStyle(.gray)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .offset(x: -8, y: 10)
            }
            
            Text("\(user.fullname), \(user.age)")
                .font(.title2)
                .fontWeight(.light)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 240)
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.users[26])
}
