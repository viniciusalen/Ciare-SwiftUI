//
//  LocalUserInformationService.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 28/01/21.
//

import SwiftUI
import CoreData

final class CDUserInformationService: UserInformationService {
    static let shared = CDUserInformationService()
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    let persistentContainer: NSPersistentCloudKitContainer = {
//        let container = NSPersistentCloudKitContainer(name: "Ciare_SwiftUI")
//
//        guard let description = container.persistentStoreDescriptions.first else {
//            fatalError("Error")
//        }
//
//        container.loadPersistentStores {
//            storeDescription, error in
//
//            storeDescription.cloudKitContainerOptions?.databaseScope = .public
//
//            if let foundError = error {
//                fatalError("Error: \(foundError)")
//            }
//        }
//
//        container.viewContext.automaticallyMergesChangesFromParent = true
//        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
//
//        return container
//    }()
    
    func createWith(
        name: String,
        typeBusiness: String,
        expertiseAreas: String,
        location: String?,
        socialNetworks: [String]?){
        let context = appDelegate.persistentContainer.viewContext
        
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
            print("ERROR : \n\n \(error.localizedDescription)")
        }
    }
}
