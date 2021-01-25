//
//  User.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 25/01/21.
//

import Foundation
import UIKit
import CloudKit

class User {
    
    var id: String
    var name: String
    var informations: UsersInfo
   

    init(id: String,
         name: String,
         informations: UsersInfo)
    {
        
        self.id = id
        self.name = name
        self.informations = informations
    }
    
}

