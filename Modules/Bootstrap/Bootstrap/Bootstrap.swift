//
//  Bootstrap.swift
//  Bootstrap
//
//  Created by Haakon Langaas Lageng on 31/08/2022.
//

//
//  Main+Bootstrap.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import Resolver
import Core
import Services
import Persistence

extension Resolver {
	public static func bootstrapDomain() {
		register { FriendsService() }.implements(FriendsServiceProtocol.self)
		register { CoreDataManager() }.implements(DataManagerProtocol.self)
	}
}
