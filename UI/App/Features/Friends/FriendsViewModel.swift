//
//  FriendsViewModel.swift
//  App
//
//  Created by Haakon Langaas Lageng on 15/08/2022.
//

import Foundation
import Resolver
import Core

class FriendsViewModel: ObservableObject {
	
	private var possibleFriends: [UserInfo] = []
	@Published public private(set) var currentFriendShowing: UserInfo?	
	@Injected var friendsService: FriendsServiceProtocol
	
	public func loadFriends() -> Void {
		let friends = self.friendsService.getFriends()
		possibleFriends.append(contentsOf: friends)
		currentFriendShowing = friends.first
	}
}
