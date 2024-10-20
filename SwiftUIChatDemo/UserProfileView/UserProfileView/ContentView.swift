//
//  ContentView.swift
//  UserProfileView
//
//  Created by Eric Rohm on 10/20/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        // Navigation View to allow transitioning between views
        NavigationView {
            VStack {
                // Navigation link to go to UserProfileView
                NavigationLink(destination: UserProfileView(user: createSampleUser())) {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Home")
        }
    }
    
    // Helper function to create a sample user profile
    func createSampleUser() -> UserProfile {
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
        
        return UserProfile(username: "@jane_doe",
                           fullName: "Jane Doe",
                           bio: "Passionate about coding and coffee. Lover of tech and the great outdoors. Currently exploring the world!",
                           profileImage: "profilePic",
                           posts: samplePosts)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
