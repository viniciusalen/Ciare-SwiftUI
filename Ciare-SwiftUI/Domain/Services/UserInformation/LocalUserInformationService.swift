//
//  LocalUserInformationService.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 28/01/21.
//

import SwiftUI
import CoreData

final class LocalUserInformationService: UserInformationService {
    static let shared = LocalUserInformationService()
    
    let persistentContainer: NSPersistentCloudKitContainer = {
        let container = NSPersistentCloudKitContainer(name: "Ciare_SwiftUI")
        container.loadPersistentStores {
            storeDescription, error in
            
            if let foundError = error {
                fatalError("Error: \(foundError)")
            }
        }
        
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        
        return container
    }()
    
    func createWith(name: String, typeBusiness: String, expertiseAreas: String, location: String?, socialNetworks: [String]?) {
        let context = persistentContainer.viewContext
        
        let newInfo = NSEntityDescription.insertNewObject(forEntityName: "UserInformation", into: context) as! UserInformation
        
        newInfo.name = name
        newInfo.typeBusiness = typeBusiness
        newInfo.expertiseAreas = expertiseAreas
        newInfo.location = location
        newInfo.socialNetworks = socialNetworks
        newInfo.followers = []
        newInfo.partners = []
        newInfo.following = []
        
        do {
            try context.save()
            print("Salvou")
            debugPrint(newInfo)
        } catch {
            print(error.localizedDescription)
        }
    }
}
