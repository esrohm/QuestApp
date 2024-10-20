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
        NavigationStack {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
