//
//  LoginViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import SwiftUI
import AuthenticationServices

final class LoginViewModel: ObservableObject {
    var userSessionService: UserSessionService

    init(userSessionService: UserSessionService) {
        self.userSessionService = userSessionService
    }
    
    func signInWithAppleRequest(_ request: ASAuthorizationAppleIDRequest){
        request.requestedScopes = [.email, .fullName]
    }
    
    func signInWithAppleSuccess(_ authorization: ASAuthorization){
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            let userId = appleIDCredential.user
            
            userSessionService.logIn(userId: userId)
            print("\nID:\n" + userId + "\n\n")
        }
    }
    
    func signInWithAppleError(_ error: Error){
        print("\n\n ERROR\n\n \(error)\n\n")
    }
}
