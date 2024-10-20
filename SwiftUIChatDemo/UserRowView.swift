//
//  UserRowView.swift
//  SwiftUIChatDemo
//
//  Created by Charles Burnett on 10/19/24.
//

import SwiftUI

struct UserRowView: View {
    
    @State var image:String
    @State var name:String
    @State var hobbies:[String]

    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 40,height: 40).cornerRadius(20.0)
            Text("\(name)").foregroundColor(Color.white).fontWeight(.bold)
            Spacer()
            ForEach(hobbies, id: \.self) { hobby in
                Text("\(hobby)")
                    .foregroundColor(Color.white).font(.system(size: 10)).padding(.all, 5.0).background(Color.green).cornerRadius(5.0).padding(.trailing, 5.0)
            }
        }
    }
}

#Preview {
    UserRowView(image: "charlie", name: "Jane Doe", hobbies: ["cooking", "swimming"]).background(Color.gray)
}
