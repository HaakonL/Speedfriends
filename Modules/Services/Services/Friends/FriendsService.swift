//
//  File.swift
//
//
//  Created by Haakon Langaas Lageng on 25/08/2022.
//

import Foundation
import Core

public class FriendsService: FriendsServiceProtocol {
	
	public init() {}
	
	public func getFriends() -> [UserInfo] {
		var friends: [UserInfo] = []
		friends.append(UserInfo())
		return friends
	}
}
