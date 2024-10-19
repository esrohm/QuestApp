//
//  ChannelListHeaderModifier.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

// ChannelListHeaderModifier.swift

import SwiftUI
import StreamChatSwiftUI

struct CustomChannelModifier: ChannelListHeaderViewModifier {

    var title: String

    @State var profileShown = false

    func body(content: Content) -> some View {
        content.toolbar {
            CustomChannelHeader(title: title) {
                profileShown = true
            }
        }
        .sheet(isPresented: $profileShown) {
            Text("Profile View")
        }
    }

}
