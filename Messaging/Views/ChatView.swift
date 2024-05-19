//
//  ChatView.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/21/24.
//

import SwiftUI

struct ChatView: View {
    let user: User
    @State private var name = ""
    @State private var searchText: String = ""
    @State private var messageText: String = ""
    @State private var isTyping = false
    @State private var messages: [(String, Date)] = [] // Array to store messages and timestamps

    var body: some View {
        VStack {
            ScrollView {
                TextField("Search messages", text: $searchText)
                    .padding(.leading, 10)
                    .padding(.vertical, 15)
                    .background(searchText.isEmpty ? Color.clear : Color.white.opacity(0.3))
                    .cornerRadius(10)
                
                Text("Chat with \(user.fullname)")
                    .font(.headline)
                    .padding()
                
                HStack {
                    Spacer()
                    Text(user.msg)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                    
                }
                
                ForEach(messages, id: \.1) { message, timestamp in
                    HStack {
                        Text(message)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Text("\(timestamp, formatter: dateFormatter)")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.trailing, 10)
                    }
                    .padding(.horizontal)
                }
                .padding(.horizontal)
            }
            
            Spacer()

            VStack {
                TextField("Type a message...", text: $messageText) { isEditing in
                    isTyping = isEditing
                } onCommit: {
                    // Handle sending the message
                    messages.append((messageText, Date()))
                    messageText = ""
                }
                .padding()
                .cornerRadius(10)
                .padding(.horizontal)

                if isTyping {
                    Button(action: {
                        // Handle sending the message
                        messages.append((messageText, Date()))
                        messageText = ""
                    }) {
                        Text("Send")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.tinderPink)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    .padding(.bottom)
                }
            }
            .animation(.default)
            .background(Color(.systemGroupedBackground))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: MockData.users[26])
    }
}
