//
//  SignUpViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 25/01/21.
//

import SwiftUI

final class SignUpViewModel: ObservableObject {
    @Published private(set) var state: SignUpViewState
    
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
    
    init(initialState: SignUpViewState = .init()) {
        state = initialState
    }
}
