//
//  App_UnitTests.swift
//  App.UnitTests
//
//  Created by Haakon Langaas Lageng on 05/09/2022.
//

import XCTest
@testable import App

final class FriendsViewModelTests: XCTestCase {

    func testLoadFriendsSetsCurrentFriendShowing() throws {
        let vm = FriendsViewModel()
		vm.loadFriends()
		XCTAssertNotNil(vm.currentFriendShowing)
    }
}
