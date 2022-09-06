//
//  UserInterest.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 06/09/2022.
//

import Foundation

public struct UserInterest: Identifiable {
	
	public init(name: String, image: String, inCommon: Bool = false) {
		self.name = name
		self.image = image
		self.inCommon = inCommon
	}

	public let id = UUID()
	public let name: String
	public let image: String
	public let inCommon: Bool
}
