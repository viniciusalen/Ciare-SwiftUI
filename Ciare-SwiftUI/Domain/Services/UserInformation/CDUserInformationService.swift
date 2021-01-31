////
////  LocalUserInformationService.swift
////  Ciare-SwiftUI
////
////  Created by Leonardo Viana on 28/01/21.
////
//
//import SwiftUI
//import CoreData
//
//final class CDUserInformationService: UserInformationService {
//    static let shared = CDUserInformationService()
//    
//    let persistentContainer: NSPersistentCloudKitContainer = {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        
//        return appDelegate.persistentContainer
//    }()
//    
//    func createWith(
//        name: String,
//        typeBusiness: String,
//        expertiseAreas: String,
//        location: String?,
//        socialNetworks: [String]?){
//        let context = persistentContainer.viewContext
//        
//        let newInfo = NSEntityDescription.insertNewObject(forEntityName: "UserInformation", into: context) as! UserInformation
//        
//        newInfo.name = name
//        newInfo.typeBusiness = typeBusiness
//        newInfo.expertiseAreas = expertiseAreas
//        newInfo.location = location
//        newInfo.socialNetworks = socialNetworks
//        newInfo.followers = []
//        newInfo.partners = []
//        newInfo.following = []
//        
//        do {
//            try context.save()
//            print("Salvou")
//            debugPrint(newInfo)
//        } catch {
//            print("ERROR : \n\n \(error.localizedDescription)")
//        }
//    }
//}
