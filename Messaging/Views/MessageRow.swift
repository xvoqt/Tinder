//
//  MessageRow.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/19/24.
//

import SwiftUI

struct MessageRow: View {
    let user: User
    @State public var currentImageIndex = 0
    @State private var isChatOpen = false
    
    var body: some View {
        Button(action: {
            isChatOpen.toggle()
        }) {
            VStack(spacing: 0) {
                HStack {
                    Image(user.profileImageURLs[currentImageIndex])
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 70, height: 70)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text(user.fullname)
                                .font(.headline)
                                .fontWeight(.medium)

                            Text(randomTime())
                                .foregroundColor(.gray)
                                .font(.footnote)
                                .frame(alignment: .topTrailing)
                        }
                            Text(user.msg)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(2) // Limit to 2 lines
                                .truncationMode(.tail) // Truncate at the end
                            
                    }
                    
                    .padding(.trailing, 10)
                    
                    Spacer()
                }
                .padding(.horizontal, 10)
                .frame(maxWidth: .infinity) // Expand to fill the width
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                
                Divider().background(Color.gray.opacity(0.5)) // Divider
                
                HStack {
                    
                    
                    Spacer()
                }
            }
        }
        .sheet(isPresented: $isChatOpen) {
            ChatView(user: user)
        }
    }
    
    func randomTime() -> String {
        let now = Date()
        let randomTimeInterval = Double.random(in: 0...(365 * 24 * 60 * 60)) // Random time interval up to 1 year
        let randomDate = now.addingTimeInterval(-randomTimeInterval)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        return dateFormatter.string(from: randomDate)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(user: MockData.users[26])
    }
}
