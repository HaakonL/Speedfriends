//
//  ContentView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import SwiftUI
import Resolver

enum TabItem: Int {
	case events, feed, friends, groups, chats
}

struct MainView: View {
	
	@State var selectedTab: TabItem
	
    var body: some View {
		TabView(selection: $selectedTab) {

			ZStack {
				SolidBackground()
				VStack {
					Header()
					EventsView()
				}
			}
			.tag(TabItem.events)
			.tabItem { Image("events-off") }

			ZStack {
				SolidBackground()
				FeedView()
			}
			.tag(TabItem.feed)
			.tabItem { Image("feed-off") }

			ZStack {
				SolidBackground()
				VStack {
					Header()
					FriendsView()
				}
			}
			.tag(TabItem.friends)
			.tabItem { Image("friends-on") }

			ZStack {
				SolidBackground()
				GroupsView()
			}
			.tag(TabItem.groups)
			.tabItem { Image("groups-off") }

			ZStack {
				SolidBackground()
				ChatsView()
			}
			.tag(TabItem.chats)
			.tabItem { Image("chats-off") }
		}
		.accentColor(.purple)
    }
}

struct Header: View {
	var body: some View {
		HStack {
			Image("bojan")
			Spacer()
			Image("logo")
			Spacer()
			Image("settings")
		}
		.padding()
	}
}

struct SolidBackground: View {
	var body: some View {
		Color.bg
			.ignoresSafeArea(edges: [.top, .horizontal])
	}
}

struct MainPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.friends)
			.preferredColorScheme(.dark)
    }
}
