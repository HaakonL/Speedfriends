//
//  FriendsViewModel.swift
//  App
//
//  Created by Haakon Langaas Lageng on 15/08/2022.
//

import Foundation
import Core
import Factory

class FriendsViewModel: ObservableObject {
	private var possibleFriends: [UserInfo] = []
    private var friendsService = Container.shared.friendsService()
    
    @Published public private(set) var currentFriendShowing: UserInfo?
	
	public func loadFriends() -> Void {
        //guard let friendsService else { return }
        
		let friends = friendsService.getFriends()
		possibleFriends.append(contentsOf: friends)
		currentFriendShowing = friends.first
	}
}
