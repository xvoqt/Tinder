//
//  ProfileMatchGridView.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/19/24.
//

import SwiftUI

struct ProfileMatchGridView: View {
    @State private var selectedUser: User?
    @State private var isCardViewPresented = false
    @StateObject var viewModel = CardsViewModel(service: CardService())

    var body: some View {
        Group {
            if isCardViewPresented {
                CardView(viewModel: viewModel, model: CardModel(user: selectedUser!))
            } else {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(MockData.users) { user in
                            VStack {
                                Image(user.profileImageURLs.first ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: imageWidth, height: imageHeight)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.horizontal, 10)
                                    .onTapGesture {
                                        selectedUser = user
                                        isCardViewPresented = true
                                    }

                                VStack(alignment: .leading, spacing: 5) {
                                    Text(user.fullname)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    
                                    Text(user.bio)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                .padding(.horizontal, 10)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }

    private var columns: [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
        ]
    }
    
    private var imageWidth: CGFloat {
        return 110
    }
    
    private var imageHeight: CGFloat {
        return 160
    }
}

struct ProfileMatchGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMatchGridView()
    }
}
