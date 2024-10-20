//
//  UserProfile.swift
//  UserProfileView
//
//  Created by Eric Rohm on 10/20/24.
//

import Foundation

struct UserPost: Identifiable {
    var id = UUID()
    var imageName: String // This can be a URL or a local image asset
}

struct UserProfile {
    var username: String
    var fullName: String
    var bio: String
    var profileImage: String
    var posts: [UserPost] // Array of posts
}

