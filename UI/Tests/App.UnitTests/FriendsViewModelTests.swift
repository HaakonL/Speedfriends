//
//  App_UnitTests.swift
//  App.UnitTests
//
//  Created by Haakon Langaas Lageng on 05/09/2022.
//

import XCTest
import Resolver
@testable import App

final class FriendsViewModelTests: XCTestCase {

    func testLoadFriendsSetsCurrentFriendShowing() throws {
		let vm: FriendsViewModel = Resolver.resolve()
		vm.loadFriends()
		XCTAssertNotNil(vm.currentFriendShowing)
    }
	
	func testLoadFriendsSetsAge() throws {
		let vm: FriendsViewModel = Resolver.resolve()
		vm.loadFriends()
		XCTAssertEqual(99, vm.currentFriendShowing?.age)
	}
}
