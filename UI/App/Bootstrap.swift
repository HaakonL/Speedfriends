//
//  Main+Bootstrap.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import Resolver
import Bootstrap

extension Resolver: ResolverRegistering {
	public static func registerAllServices() {
		Resolver.bootstrapApp()
		Resolver.bootstrapDomain()
	}
	
	public static func bootstrapApp() {
		register { FriendsViewModel() }
	}
}
