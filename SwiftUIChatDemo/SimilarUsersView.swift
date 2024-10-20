//
//  SimilarUsersView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI

let userList = [
    User(name: "Linda Johnson", interests: ["Cooking", "Skiing"]),
    User(name: "John Smith", interests: ["Swimming", "Reading"]),
    User(name: "Jane Doe", interests: ["Cooking", "Skiing"])
]

struct SimilarUsersView: View {
    var body: some View {
        List {
            Text("placeholder")
        }
    }
}

#Preview {
    SimilarUsersView()
}
