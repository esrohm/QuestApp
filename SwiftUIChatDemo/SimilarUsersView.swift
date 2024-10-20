//
//  SimilarUsersView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI

let userList = [
    User(id: 1, name: "Linda Johnson", interests: ["Cooking", "Skiing"]),
    User(id: 2, name: "John Smith", interests: ["Swimming", "Reading"]),
    User(id: 3, name: "Jane Doe", interests: ["Cooking", "Skiing"])
]

struct SimilarUsersView: View {
    var body: some View {
        List {
            ForEach(userList) { user in
                UserRowView(name: user.name, hobbies: user.interests)
            }
        }
    }
}

#Preview {
    SimilarUsersView()
}
