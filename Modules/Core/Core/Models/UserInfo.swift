//
//  Entity.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 01/01/2022.
//

import Foundation

public class UserInfo: Entity {
	public init() {}

	public let name: String = "Silje Marie"
	public let age: Int = 33
	public let location: String = "Oslo"
	public let images: [String] = ["photo2", "photo3", "photo4", "photo5", "photo1"]
	public let description: String = "Jeg er nylig flyttet tilbake til Oslo etter et par år i hjemlandet mitt, Danmark, i følge med min samboer og vår snart to år gamle datter 👪. Nettverket mitt her i byen er fortsatt ganske beskjedent, og det hadde vært veldig hyggelig å utbygge det litt 😀."
	
	public let interests: [UserInterest] = [
		UserInterest(name: "Swimming", image: "swimming", inCommon: false),
		UserInterest(name: "Running", image: "running", inCommon: true),
		UserInterest(name: "Healthy Food", image: "healthy_food", inCommon: false),
		UserInterest(name: "Sailing", image: "sailing", inCommon: true),
		UserInterest(name: "Astronomy", image: "astronomy", inCommon: false),
		UserInterest(name: "Travelling", image: "travelling", inCommon: false),
		UserInterest(name: "Art", image: "art", inCommon: false),
		UserInterest(name: "Music", image: "music", inCommon: true),
		UserInterest(name: "Basketball", image: "basketball", inCommon: false)
	]
	
	public struct UserInterest: Identifiable {
		public let id = UUID()
		public let name: String
		public let image: String
		public let inCommon: Bool
	}
}
