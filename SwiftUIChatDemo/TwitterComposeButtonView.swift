//
//  TwitterComposeButtonView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  TwitterComposeButtonView.swift
//  ChannellListTheming

import SwiftUI

struct TwitterComposeButtonView: View {

    let orangeGreen = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)

    var body: some View {
        HStack {
            Spacer()

            Image(systemName: "plus.message.fill")
                .font(.largeTitle)
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(orangeGreen)
        }
    }
}

struct TwitterComposeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterComposeButtonView()
    }
}
