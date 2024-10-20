//
//  ChatView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/20/24.
//

import SwiftUI

struct ChatView: View {
    var user: UserProfile
    @State private var newMessage = ""
    @State private var messages: [String] = ["Hello! How are you?", "I'm doing great, thanks!"]

    var body: some View {
        VStack {
            // Displaying the chat messages
            List(messages, id: \.self) { message in
                HStack {
                    Text(message)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }

            // Text field for new message
            HStack {
                TextField("Enter message...", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: sendMessage) {
                    Text("Send")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Chat with \(user.username)")
    }

    // Send a new message and clear the input
    func sendMessage() {
        if !newMessage.isEmpty {
            messages.append(newMessage)
            newMessage = ""
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: UserProfile(username: "ricky_roam", fullName: "Ricky Roam", bio: "Bio", profileImage: "ricky", posts: []))
    }
}
