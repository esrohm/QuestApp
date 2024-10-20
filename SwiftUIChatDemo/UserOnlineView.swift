//
//  UserOnlineView.swift
//  SwiftUIChatDemo
//
//  Created by Eric Rohm on 10/19/24.
//

//  UserOnlineView.swift
//  ChannellListTheming

import SwiftUI

struct UserOnlineView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image(systemName: "video.badge.plus")
                            .font(.system(size: 40))
                            .symbolRenderingMode(.multicolor)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))

                        Image("")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Add")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("stefan")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Stefan")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("alice")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Alice")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("luke")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Luke")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("fra")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Fra")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("george")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("George")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("gordon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Gordon")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("nash")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Nash")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("zoey")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Zoey")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }

                VStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("thierry")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Image("status")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("Thierry")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct UserOnlineView_Previews: PreviewProvider {
    static var previews: some View {
        UserOnlineView()
    }
}
