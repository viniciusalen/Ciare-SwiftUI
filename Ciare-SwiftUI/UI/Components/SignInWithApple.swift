//
//  SignInWithApple.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import Foundation
import SwiftUI
import AuthenticationServices


final class SignInWithApple: UIViewRepresentable {

  func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
    return ASAuthorizationAppleIDButton()
  }
  

  func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
  }
}
