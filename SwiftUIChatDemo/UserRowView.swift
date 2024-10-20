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
            Text("\(name)").foregroundColor(Color.white).fontWeight(.bold)
            Spacer()
            ForEach(hobbies, id: \.self) { hobby in
                Text("\(hobby)")
                    .foregroundColor(Color.white).padding(.all, 5.0).background(Color.green).cornerRadius(5.0).padding(.trailing, 5.0)
            }
        }
    }
}

#Preview {
    UserRowView(name: "Jane Doe", hobbies: ["cooking", "swimming"]).background(Color.gray)
}
