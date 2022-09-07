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
		register { FriendsService() as FriendsServiceProtocol }
		register { CoreDataManager() as DataManagerProtocol }
		
#if DEBUG || TEST
		register { FriendsMockService() as FriendsServiceProtocol }
		register { InMemoryDataManager() as DataManagerProtocol }
#endif
	}
}
