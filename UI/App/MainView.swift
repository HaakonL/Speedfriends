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
	
	var tabItem: AnyView {
		switch self {
			case .events:
				return AnyView(EventsView())
			case .feed:
				return AnyView(FeedView())
			case .friends:
				return AnyView(FriendsView())
			case .groups:
				return AnyView(GroupsView())
			case .chats:
				return AnyView(ChatsView())
		}
	}
}

struct TabItemData: Identifiable {
	let id = UUID()
	let defaultImage: String
	let activeImage: String
	let tabItem: TabItem
}

struct MainView: View {
	
	@State var selectedTab: TabItem
	
	var tabItems = [
		TabItemData(defaultImage: "calendar_default", activeImage: "calendar_active", tabItem: TabItem.events),
		TabItemData(defaultImage: "feed_default", activeImage: "feed_active", tabItem: TabItem.feed),
		TabItemData(defaultImage: "friends_default", activeImage: "friends_active", tabItem: TabItem.friends),
		TabItemData(defaultImage: "groups_default", activeImage: "groups_active", tabItem: TabItem.groups),
		TabItemData(defaultImage: "chat_default", activeImage: "chat_active", tabItem: TabItem.chats)
	]
	
	init(selectedTab: TabItem) {
		self.selectedTab = selectedTab
		UITabBar.appearance().isTranslucent = false
		UITabBar.appearance().barTintColor = UIColor(named: "tabbar-background")
	}
	
    var body: some View {
		ZStack {
			TabView(selection: $selectedTab) {
				ForEach(tabItems) { item in
					TabViewItem(tabItem: item.tabItem) { getTabView(type: item.tabItem) }
				}
			}
			
			VStack {
				Spacer()
				
				HStack {
					Spacer()
					
					ForEach(tabItems) { item in
						Button {
							selectedTab = item.tabItem
						} label: {
							Image(item.tabItem == selectedTab ? item.activeImage : item.defaultImage)
						}

						Spacer()
					}
				}
			}
		}
    }
	
	@ViewBuilder
	func getTabView(type: TabItem) -> some View {
		switch type {
			case .events:
				EventsView()
			case .feed:
				FeedView()
			case .friends:
				FriendsView()
			case .groups:
				GroupsView()
			case .chats:
				ChatsView()
		}
	}
}

struct TabViewItem<Content:View>: View {
	//@State public private(set) var defaultImage: String
	//@State public private(set) var activeImage: String
	@State public private(set) var tabItem: TabItem
	
	//@Binding public private(set) var selectedTab: TabItem
	
	public private(set) var content: () -> Content
	
	var body: some View {
		ZStack {
			Color.bg.ignoresSafeArea(edges: [.top, .horizontal])
			VStack {
				Header()
				self.content()
			}
		}
		/*.tabItem {
			Image("\(image)_\(selectedTab == tabItem ? "active" : "default")")
		}*/
		.tag(tabItem)
	}
}

struct Header: View {
	var body: some View {
		HStack {
			Button {
				
			} label: {
				Image("bojan")
			}
			
			Spacer()
			
			Image("logo")
			
			Spacer()
			
			Button {
				
			} label: {
				Image("settings")
			}
		}
		.padding()
	}
}

struct MainPreview: PreviewProvider {
    static var previews: some View {
		Group {
			MainView(selectedTab: TabItem.friends)
				.preferredColorScheme(.light)
			
			MainView(selectedTab: TabItem.friends)
				.preferredColorScheme(.dark)
		}
    }
}
