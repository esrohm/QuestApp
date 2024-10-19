//
//  BackgroundView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  BackgroundView.swift
//  ChannellListTheming

import SwiftUI

struct BackgroundView: View {
    let orangeGreen = LinearGradient(colors: [.orange, .green],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    var body: some View {
        orangeGreen
            .opacity(0.25)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
