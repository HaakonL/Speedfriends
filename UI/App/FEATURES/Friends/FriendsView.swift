//
//  FriendsView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI

struct FriendsView: View {
    @StateObject private var viewModel = FriendsViewModel()
	
    var body: some View {
		ScrollView{
			VStack {
                if let friend = viewModel.currentFriendShowing {
                    CarouselSubview(friend)
                    InterestsSubview(friend)
                    AboutMeSubview(friend)
                }
				Spacer()
			}
		}
		.onAppear() {
			viewModel.loadFriends()
		}
    }
}

struct FriendsPreview: PreviewProvider {
    static var previews: some View {
		Group {
			MainView(selectedTab: TabItem.friends)
		}
    }
}
