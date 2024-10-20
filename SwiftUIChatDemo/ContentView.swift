//
//  ContentView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

import SwiftUI
import StreamChat
import StreamChatSwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Second View")) {
                Text("Hello, World!")
            }
            .navigationTitle("Navigation")
        }
//            ChatChannelListView(viewFactory: CustomUIFactory.shared)
    }
}

#Preview {
    ContentView()
}
