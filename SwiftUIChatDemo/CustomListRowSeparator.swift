//
//  CustomListRowSeparator.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  CustomListRowSeparator.swift
//  ChannellListTheming

import SwiftUI

struct CustomListRowSeparator: View {
    let deviceWidth = UIScreen.main.bounds.width
    let orangeGreen = LinearGradient(colors: [.orange, .green],
                                  startPoint: .leading,
                                  endPoint: .trailing)
    var body: some View {
        Rectangle()
            .fill(orangeGreen)
            .frame(width: deviceWidth, height: 1)
            .blendMode(.screen)
    }
}

struct CustomListRowSeparator_Previews: PreviewProvider {
    static var previews: some View {
        CustomListRowSeparator()
    }
    
    // 3. Customize the list divider
    func makeChannelListDividerItem() -> some View {
        //EmptyView()
        CustomListRowSeparator()
    }
}
