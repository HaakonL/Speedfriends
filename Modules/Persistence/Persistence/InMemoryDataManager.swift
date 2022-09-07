//
//  InMemoryDataManager.swift
//  Persistence
//
//  Created by Haakon Langaas Lageng on 07/09/2022.
//

import Foundation
import CoreData
import Core

public struct InMemoryDataManager : DataManagerProtocol {
	private static var db = [Entity]()
	
	public init() {}
	
	public func upsert(_ entity: Entity) -> Bool {
		var existing = self.getById(entity.id)
		if existing != nil {
			existing = entity
		} else {
			InMemoryDataManager.db.append(entity)
		}
		return true
	}
	
	public func getById(_ id: UUID) -> Entity? {
		InMemoryDataManager.db.first { $0.id == id }
	}
}
