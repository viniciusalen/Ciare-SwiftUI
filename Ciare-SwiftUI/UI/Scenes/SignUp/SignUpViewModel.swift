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
    private var businessType = ""
    
    var bindings: (
        brandName: Binding<String>,
        businessArea: Binding<String>,
        businessName: Binding<String>,
        businessType: Binding<String>,
        location: Binding<String>,
        socialNetworks: Binding<[String]>
    ) {
        (
            brandName: Binding(
                get: { self.state.brandName },
                set: { self.state.brandName = $0 }
            ),
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
    
    func createInformations() {
    }
}
