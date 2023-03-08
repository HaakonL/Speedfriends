//
//  CoreDataManager.swift
//  Persistence
//
//  Created by Haakon Langaas Lageng on 01/01/2022.
//

import CoreData
import Core

public struct CoreDataManager : DataManagerProtocol {
	
	public init() {}
	
	public func upsert(_ entity: Entity) -> Bool {
		return true
	}
	
	public func getById(_ id: UUID) -> Entity? {
		return UserInfo(name: "", age: 0, location: "", images: [], description: "", interests: [])
	}
}
