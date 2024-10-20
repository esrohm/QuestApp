//
//  UserRowView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI

struct UserRowView: View {
    
    @State var name:String
    @State var hobbies:[String]

    var body: some View {
        HStack {
            Text("\(name)")
            Spacer()
            ForEach(hobbies, id: \.self) { hobby in
                Text("\(hobby)")
            }
        }
    }
}

#Preview {
    UserRowView(name: "Jane Doe", hobbies: ["cooking", "swimming"])
}
