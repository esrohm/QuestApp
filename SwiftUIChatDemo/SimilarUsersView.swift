//
//  SimilarUsersView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI
import StreamChatSwiftUI

// Dummy data
let userList = [
    User(id: 1, name: "Charlie Burnett", interests: ["Cooking", "Muay Thai"]),
    User(id: 2, name: "Amin Yachnes", interests: ["Teaching", "Woodwork"]),
    User(id: 3, name: "Doug Hamilton", interests: ["GoT", "Hackathons"]),
    User(id: 4, name: "Bradley Dalton Oates", interests: ["Product", "Also Product"]),
    User(id: 5, name: "Ricky Roam", interests: ["Foodie", "Cooking"])
]

struct SimilarUsersView: View {
    var body: some View {
        VStack {
            Text("Similar Users").foregroundColor(.purple).font(.system(size: 36, weight: .bold)).padding()
            List {
                ForEach(userList) { user in
                    NavigationLink(destination: ChatChannelListView(viewFactory: CustomUIFactory.shared)) {
                        UserRowView(name: user.name, hobbies: user.interests)
                    }.listRowBackground(Color(red:0.7, green: 0.7, blue: 0.8))
                }
            }
        }.background(Color(red: 0.733, green: 0.973, blue: 0.969).edgesIgnoringSafeArea(.all))        .scrollContentBackground(.hidden)
    }
}

#Preview {
    SimilarUsersView()
}
