//
//  UserProfileView.swift
//  UserProfileView
//
//  Created by Eric Rohm on 10/20/24.
//
import SwiftUI

struct UserProfileView: View {
    var user: UserProfile

    // Define grid layout
    let gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()) // 3 columns layout
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Profile Image
                Image(user.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 5)

                // Username
                Text(user.username)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                // Full Name
                Text(user.fullName)
                    .font(.headline)
                    .foregroundColor(.secondary)

                // Bio
                Text(user.bio)
                    .font(.body)
                    .foregroundColor(.gray)
                    .lineLimit(3)

                // Posts Grid
                Text("Posts")
                    .font(.headline)
                    .padding(.top)

                LazyVGrid(columns: gridItems, spacing: 10) {
                    ForEach(user.posts) { post in
                        Image(post.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped() // Ensures the images don't overflow
                    }
                }

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Profile")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
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
        
        return UserProfileView(user: UserProfile(username: "@jane_doe",
                                                 fullName: "Jane Doe",
                                                 bio: "Passionate about coding and coffee. Lover of tech and the great outdoors. Currently exploring the world!",
                                                 profileImage: "profilePic",
                                                 posts: samplePosts))
        
        
    }
}
