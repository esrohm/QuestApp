//
//  User.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import Foundation

struct User: Identifiable {
    var id: Int
    var profile: String
    var name: String
    var interests: [String]
}
