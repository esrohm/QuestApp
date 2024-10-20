//
//  SimilarUsersView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI
import StreamChatSwiftUI

let userList = [
    User(id: 1, name: "Linda Johnson", interests: ["Cooking", "Skiing"]),
    User(id: 2, name: "John Smith", interests: ["Swimming", "Reading"]),
    User(id: 3, name: "Jane Doe", interests: ["Cooking", "Skiing"])
]

struct SimilarUsersView: View {
    var body: some View {
        VStack {
            Text("Similar Users")
            List {
                ForEach(userList) { user in
                    NavigationLink(destination: ChatChannelListView(viewFactory: CustomUIFactory.shared)) {
                        UserRowView(name: user.name, hobbies: user.interests)
                    }.listRowBackground(Color.blue)
                }
            }
        }.background(Color(red: 0.733, green: 0.973, blue: 0.969).edgesIgnoringSafeArea(.all))        .scrollContentBackground(.hidden)
    }
}

#Preview {
    SimilarUsersView()
}
