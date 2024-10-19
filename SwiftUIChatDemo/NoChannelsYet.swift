//
//  NoChannelsYet.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  NoChannelsYet.swift
//  ChannellListTheming

import SwiftUI

struct NoChannelsYet: View {
    var body: some View {
        VStack {
            Image("emptyChannels")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text("Sorry, No channels yet!!!")
        }
    }
}

struct NoChannelsYet_Previews: PreviewProvider {
    static var previews: some View {
        NoChannelsYet()
    }
}
