import Factory
import Core
import Services
import Persistence

extension Container {
#if DEBUG || TEST
    var friendsService: Factory<FriendsServiceProtocol> { self { FriendsMockService() } }
    var dataManager: Factory<DataManagerProtocol> { self { InMemoryDataManager() } }
#else
    var friendsService: Factory<FriendsServiceProtocol> { self { FriendsService() } }
    var dataManager: Factory<DataManagerProtocol> { self { CoreDataManager() } }
#endif
}
