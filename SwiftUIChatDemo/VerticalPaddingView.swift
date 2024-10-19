//
//  VerticalPaddingView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

// VerticalPaddingView.swift

import SwiftUI
import StreamChatSwiftUI

// Add a padding on top of the channel list
struct VerticalPaddingViewModifier: ViewModifier {

    public func body(content: Content) -> some View {
        content
            .listStyle(.insetGrouped)
            .padding(.vertical, 8)
    }

}
