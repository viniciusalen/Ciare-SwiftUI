//
//  SignUpViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 25/01/21.
//

import SwiftUI
import CoreData

final class SignUpViewModel: ObservableObject {
    @Published private(set) var state: SignUpViewState
    
    var bindings: (
        businessArea: Binding<String>,
        businessName: Binding<String>,
        businessType: Binding<String>,
        location: Binding<String>,
        socialNetworks: Binding<[String]>
    ) {
        (
            businessArea: Binding(
                get: { self.state.businessArea },
                set: { self.state.businessArea = $0 }
            ),
            businessName: Binding(
                get: { self.state.businessName },
                set: { self.state.businessName = $0 }
            ),
            businessType: Binding(
                get: { self.state.businessType },
                set: { self.state.businessType = $0 }
            ),
            location: Binding(
                get: { self.state.location },
                set: { self.state.location = $0 }
            ),
            socialNetworks: Binding(
                get: { self.state.socialNetworks },
                set: { self.state.socialNetworks = $0 }
            )
        )
    }
    
    init(initialState: SignUpViewState = .init()) {
        state = initialState
    }
    
    func createInformations(context: NSManagedObjectContext) {
        let newUserInfo = NSEntityDescription.insertNewObject(forEntityName: "UserInformation", into: context) as! UserInformation
        
        newUserInfo.name = state.businessName
        newUserInfo.expertiseAreas = state.businessArea
        newUserInfo.typeBusiness = state.businessType
        newUserInfo.location = state.location
        newUserInfo.socialNetworks = state.socialNetworks
        newUserInfo.followers = []
        newUserInfo.following = []
        newUserInfo.partners = []
        
        do {
            try context.save()
            debugPrint("=============SALVO=============: \n\(newUserInfo)\n==========================")
        } catch let createError {
            print("Failed to create: \(createError)")
        }

    }
}
