//
//  UserInformationService.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 28/01/21.
//

import SwiftUI

protocol UserInformationService {
    func createWith(name: String,
        typeBusiness: String,
        expertiseAreas: String,
        location: String?,
        socialNetworks: [String]?
    )
}
