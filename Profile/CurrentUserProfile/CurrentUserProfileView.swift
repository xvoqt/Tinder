//
//  CurrentUserProfileView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/16/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User

    var body: some View {
        NavigationView {
            List {
                // header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }

                // account info
                Section(header: Text("Account Information")) {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(user.fullname)
                    }

                    HStack {
                        Text("Email")
                        Spacer()
                        Text("meldamac@gmail.com")
                    }
                }

                // legal
                Section(header: Text("Legal")) {
                    Text("Terms of Service")
                }

                // logout/delete
                Section {
                    Button("Logout") {
                        print("debug this shit later")
                    }
                    .foregroundStyle(Color.red)
                }

                Section {
                    Button("Delete Account") {
                        print("debug this shit later")
                    }
                    .foregroundStyle(Color.red)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
        }
    }
}

// Preview
struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: MockData.users[26])
    }
}
