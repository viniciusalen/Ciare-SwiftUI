//
//  UserSessionService.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import Combine
import Foundation

final class UserSessionService: ObservableObject {
    @Published var session: UserSession?
    
    func logIn(userId: String) {
        session = .init(userId: userId)
    }
    
    func logOut(){
        session = nil
    }
}
