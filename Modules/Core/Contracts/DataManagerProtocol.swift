//
//  DataManagerProtocol.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 01/01/2022.
//

import Foundation

public protocol DataManagerProtocol {
	func upsert(_ entity: Entity) -> Bool
	func getById(_ id: UUID) -> Entity?
}
