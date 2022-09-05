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
	
	public func upsert(entity: Entity) -> Bool {
		return true
	}
	
	/*public func getById(id: UUID) -> Entity {
	 return Entity()
	 }*/
}

/*public struct CoreDataManager : DataManagerProtocol {
 public static let shared = CoreDataManager()
 
 public static var preview: CoreDataManager = {
 let result = CoreDataManager(inMemory: true)
 let viewContext = result.container.viewContext
 for _ in 0..<10 {
 let newItem = Item(context: viewContext)
 newItem.timestamp = Date()
 }
 do {
 try viewContext.save()
 } catch {
 // Replace this implementation with code to handle the error appropriately.
 // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
 let nsError = error as NSError
 fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
 }
 return result
 }()
 
 public let container: NSPersistentCloudKitContainer
 
 private init(inMemory: Bool = false) {
 container = NSPersistentCloudKitContainer(name: "App")
 if inMemory {
 container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
 }
 container.viewContext.automaticallyMergesChangesFromParent = true
 container.loadPersistentStores(completionHandler: { (storeDescription, error) in
 if let error = error as NSError? {
 // Replace this implementation with code to handle the error appropriately.
 // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
 
 /*
  Typical reasons for an error here include:
  * The parent directory does not exist, cannot be created, or disallows writing.
  * The persistent store is not accessible, due to permissions or data protection when the device is locked.
  * The device is out of space.
  * The store could not be migrated to the current model version.
  Check the error message to determine what the actual problem was.
  */
 fatalError("Unresolved error \(error), \(error.userInfo)")
 }
 })
 }
 }*/

