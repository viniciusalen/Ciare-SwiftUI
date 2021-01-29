////
////  CKUserInformationService.swift
////  Ciare-SwiftUI
////
////  Created by Leonardo Viana on 28/01/21.
////
//
//import Foundation
//import CloudKit
//
//final class CKUserInformationService: UserInformationService {
//    static let shared = CKUserInformationService()
//
//    let publicDatabase: CKDatabase = {
//        let database = CKContainer(identifier: "iCloud.Ciare")
//            .publicCloudDatabase
//        
//        return database
//    }()
//    
//    func createWith(
//        name: String,
//        typeBusiness: String,
//        expertiseAreas: String,
//        location: String?,
//        socialNetworks: [String]?,
//        completionHandler: @escaping (Error?) -> ()
//    ) {
//        let userInfo = CKRecord(recordType: "UserInformation")
//        
//        userInfo["name"] = name
//        userInfo["typeBusiness"] = typeBusiness
//        userInfo["expertiseAreas"] = expertiseAreas
//        userInfo["location"] = location
//        userInfo["socialNetworks"] = socialNetworks
//        userInfo["followers"] = [""]
//        userInfo["partners"] = [""]
//        userInfo["following"] = [""]
//        
//        self.publicDatabase.save(userInfo){
//            record, error in
//            
//            guard error == nil else {
//                completionHandler(error)
//                return
//            }
//            
//            completionHandler(nil)
//        }
//    }
//}
