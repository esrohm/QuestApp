//
//  CustomUIFactory.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

// CustomUIFactory.swift

import SwiftUI
import StreamChat
import StreamChatSwiftUI

class CustomUIFactory: ViewFactory {
    
    @Injected(\.chatClient) public var chatClient
    
    private init() {}
    
    public static let shared = CustomUIFactory()
    
    // 1. Customize the no channels view
        func makeNoChannelsView() -> some View {
            NoChannelsYet()
        }

        // 2. Change the channel list background color
        func makeChannelListBackground(colors: ColorPalette) -> some View {
            BackgroundView()
        }
    // 3. Customize the list divider
    func makeChannelListDividerItem() -> some View {
        //EmptyView()
        CustomListRowSeparator()
    }
    
    // 4. Add a custom-made channel list header
    func makeChannelListHeaderViewModifier(title: String) -> some
    
    ChannelListHeaderViewModifier {
        CustomChannelModifier(title: title)
    }
    
    // 5. Remove the search bar and add a custom top view
    func makeChannelListTopView(
        searchText: Binding<String>
    ) -> some View {
        //EmptyView()
        UserOnlineView()
    }
    
    // 6. Add a vertical padding to the top of the channel list
    func makeChannelListModifier() -> some ViewModifier {
        VerticalPaddingViewModifier()
    }
    
    // 7. Add floating buttons using the footer component
    public func makeChannelListFooterView() -> some View {
        UnreadButtonView()
    }
    
    // 8. Make a tab bar using the sticky footer component
    func makeChannelListStickyFooterView() -> some View {
        WhatsAppTabView()
    }
    
    
}
