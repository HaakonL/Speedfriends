//
//  Main+Bootstrap.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import Resolver

extension Resolver: ResolverRegistering {
	public static func registerAllServices() {		
		register { FriendsViewModel() }
	}
}
