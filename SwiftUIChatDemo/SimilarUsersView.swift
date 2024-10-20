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
    User(id: 1, profile: "charlie", name: "Charlie Burnett", interests: ["Cooking", "Muay Thai"]),
    User(id: 2, profile: "amin",name: "Amin Yachnes", interests: ["Teaching", "Woodwork"]),
    User(id: 3,profile: "doug", name: "Doug Hamilton", interests: ["GoT", "Hackathons"]),
    User(id: 4, profile: "bradley", name: "Bradley Dalton Oates", interests: ["Product", "Also Product"]),
    User(id: 5, profile: "ricky", name: "Ricky Roam", interests: ["Foodie", "Cooking"])
]
//dummy posts
let samplePosts = [
    UserPost(imageName: "post1"),
    UserPost(imageName: "post2"),
    UserPost(imageName: "post3"),
    UserPost(imageName: "post4"),
    UserPost(imageName: "post5"),
    UserPost(imageName: "post6"),
    UserPost(imageName: "post7"),
    UserPost(imageName: "post8"),
    UserPost(imageName: "post9")
]

let userProfile = UserProfile(username: "@ricky_roam", fullName: "Ricky Roam", bio: "World traveller, musician, foodie. Love to helpe others find great spots for all their favorite things!", profileImage: "ricky", posts: samplePosts)

struct SimilarUsersView: View {
    var body: some View {
        VStack {
            Text("Similar Users").foregroundColor(.purple).font(.system(size: 36, weight: .bold)).padding()
            List {
                ForEach(userList) { user in
                    NavigationLink(destination: UserProfileView(user: userProfile)) {
                        UserRowView(image: user.profile, name: user.name, hobbies: user.interests)
                    }.listRowBackground(Color(red:0.7, green: 0.7, blue: 0.8))
                }
            }
        }.background(Color(red: 0.733, green: 0.973, blue: 0.969).edgesIgnoringSafeArea(.all))        .scrollContentBackground(.hidden)
    }
}

#Preview {
    SimilarUsersView()
}
