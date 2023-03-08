//
//  FriendsServiceProtocol.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 31/08/2022.
//

import Foundation

public protocol FriendsServiceProtocol {
	func getFriends() -> [UserInfo]
}
