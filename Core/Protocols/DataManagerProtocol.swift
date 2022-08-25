//
//  DataManagerProtocol.swift
//  Core
//
//  Created by Haakon Langaas Lageng on 01/01/2022.
//

import Foundation

public protocol DataManagerProtocol {
	func upsert(entity:Entity) -> Bool
	//func getById(id:UUID) -> Entity
}
