//
//  WhatsAppTabView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  WhatsAppTabView.swift
//  ChannellListTheming

import SwiftUI

struct WhatsAppTabView: View {
    let deviceWidth = UIScreen.main.bounds.width
    let orangeGreen = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)

    var body: some View {
        VStack {
           TwitterComposeButtonView()

            TabView {
                Rectangle()
                    .tabItem {
                        Label("Status", systemImage: "circle.dashed.inset.filled")
                    }

                EmptyPageView()
                    .tabItem {
                        Label("Calls", systemImage: "phone.fill")
                    }
                EmptyPageView()
                    .tabItem {
                        Label("Camera", systemImage: "camera")
                    }
                EmptyPageView()
                    .tabItem {
                        Label("Chats", systemImage: "message")
                    }
                    .badge(12)

                EmptyPageView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
            .frame(width: deviceWidth, height: 48)
        }
    }
}

struct WhatsAppTabView_Previews: PreviewProvider {
    static var previews: some View {
        WhatsAppTabView()
    }
}
