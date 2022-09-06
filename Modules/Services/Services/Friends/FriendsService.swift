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
		return self.getFriendsFromBackend()
	}
	
	private func getFriendsFromBackend() -> [UserInfo] {
		let userInfo = UserInfo(
			name: "Silje Marie",
			age: 33,
			location: "Oslo",
			images: ["photo2", "photo3", "photo4", "photo5", "photo1"],
			description: "Jeg er nylig flyttet tilbake til Oslo etter et par år i hjemlandet mitt, Danmark, i følge med min samboer og vår snart to år gamle datter 👪. Nettverket mitt her i byen er fortsatt ganske beskjedent, og det hadde vært veldig hyggelig å utbygge det litt 😀.",
			interests: [
				UserInterest(name: "Swimming", image: "swimming", inCommon: false),
				UserInterest(name: "Running", image: "running", inCommon: true),
				UserInterest(name: "Healthy Food", image: "healthy-food", inCommon: false),
				UserInterest(name: "Sailing", image: "sailing", inCommon: true),
				UserInterest(name: "Astronomy", image: "astronomy", inCommon: false),
				UserInterest(name: "Travelling", image: "travelling", inCommon: false),
				UserInterest(name: "Art", image: "art", inCommon: false),
				UserInterest(name: "Music", image: "music", inCommon: true),
				UserInterest(name: "Basketball", image: "basketball", inCommon: false)
			])
		
		return [userInfo]
	}
}

public class FriendsMockService: FriendsServiceProtocol {
	
	public init() {}
	
	public func getFriends() -> [UserInfo] {
		return self.getMockedFriends()
	}
	
	private func getMockedFriends() -> [UserInfo] {
		let firstFriend = UserInfo(
			name: "Else Nyqvuisth",
			age: 99,
			location: "Der ingen skulle tru",
			images: ["photo2", "photo3", "photo4", "photo5", "photo1"],
			description: "Ser etter en mann å hygge meg med!",
			interests: [
				UserInterest(name: "Astronomy", image: "astronomy", inCommon: false),
				UserInterest(name: "Basketball", image: "basketball", inCommon: false)
			])
		
		let secondFriend = UserInfo(
			name: "Arnold Kristoffersen",
			age: 17,
			location: "Tromsø",
			images: ["photo2", "photo3", "photo4", "photo5", "photo1"],
			description: "Her i Tromsø er det helt råtth, men man blir jo litt enzom i kulden. Hint hint.",
			interests: [
				UserInterest(name: "Swimming", image: "swimming", inCommon: false),
				UserInterest(name: "Running", image: "running", inCommon: true),
				UserInterest(name: "Healthy Food", image: "healthy-food", inCommon: false),
				UserInterest(name: "Basketball", image: "basketball", inCommon: false)
			])
		
		let thirdFriend = UserInfo(
			name: "Olav Rex",
			age: 87,
			location: "Oslo",
			images: ["photo2", "photo3", "photo4", "photo5", "photo1"],
			description: "Jeg er helt konge. Seiler masse.",
			interests: [
				UserInterest(name: "Sailing", image: "sailing", inCommon: true)
			])
		
		return [firstFriend, secondFriend, thirdFriend]
	}
}
