//
//  CustomChanneltHeader.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

// CustomChannelHeader.swift

import SwiftUI
import StreamChatSwiftUI

public struct CustomChannelHeader: ToolbarContent {

    @Injected(\.fonts) var fonts
    @Injected(\.images) var images

    public var title: String
    public var onTapLeading: () -> ()

    @State private var callType = "All"
    var calls = ["All", "Missed"]

    public var body: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            /*Text(title)
             .font(fonts.bodyBold)*/
            Picker("What is your favorite color?", selection: $callType) {
                ForEach(calls, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)

        }

        ToolbarItem(placement: .navigationBarTrailing) {
            NavigationLink {
                Text("This is injected view")
            } label: {
                /*Image(uiImage: images.messageActionEdit)
                 .resizable()*/
                Image(systemName: "phone.badge.plus")
            }
        }
        ToolbarItem(placement: .navigationBarLeading) {
            Button {
                onTapLeading()
            } label: {
                //Image(systemName: "phone.badge.plus")
                Text("Edit")
            }
        }
    }
}
