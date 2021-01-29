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

    var userInformationService: UserInformationService
    
    var bindings: (
        brandName: Binding<String>,
        rawValue: Binding<Int>,
        businessArea: Binding<String>,
        businessName: Binding<String>,
        location: Binding<String>
    ) {
        (
            brandName: Binding(get: { self.state.brandName }, set: { self.state.brandName = $0 } ),
            rawValue: Binding(get: { self.state.rawValue }, set: { self.state.rawValue = $0 } ),
            businessArea: Binding(get: { self.state.businessArea }, set: { self.state.businessArea = $0 } ),
            businessName: Binding(get: { self.state.businessName }, set: { self.state.businessName = $0 } ),
            location: Binding(get: { self.state.location }, set: { self.state.location = $0 } )
        )
    }
    
    init(initialState: SignUpViewState = .init(), userInformationService: UserInformationService = CDUserInformationService.shared) {
        state = initialState
        self.userInformationService = userInformationService
    }
        
    func signUpUser() {
        userInformationService.createWith(
            name: state.brandName,
            typeBusiness: state.businessArea,
            expertiseAreas: state.businessArea,
            location: state.location,
            socialNetworks: ["Facebook", "Instagram"])
    }
}
