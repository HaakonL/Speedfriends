//
//  Entity.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 01/01/2022.
//

import Foundation

public class UserInfo: Entity {
	
	public init(name: String, age: Int, location: String, images: [String], description: String, interests: [UserInterest]) {
		self.name = name
		self.age = age
		self.location = location
		self.images = images
		self.description = description
		self.interests = interests
	}

	public let name: String
	public let age: Int
	public let location: String
	public let images: [String]
	public let description: String
	public let interests: [UserInterest]
}
