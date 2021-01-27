//
//  LoginView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import SwiftUI
import AuthenticationServices
 
struct LoginView: View {
    @EnvironmentObject var userSessionService: UserSessionService
    @ObservedObject var model: LoginViewModel
        
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Ciare")
                    .font(.largeTitle)
                    .padding(.bottom)
                    .foregroundColor(Color(#colorLiteral(red: 0.1212012246, green: 0.2852312922, blue: 0.74481529, alpha: 1)))
                
                Spacer()
                
                SignInWithAppleButton(.signIn) {
                    request in
                    
                    request.requestedScopes = [.email, .fullName]
                } onCompletion: { (result) in
                    switch result {
                    case .success(let authorization):
                        model.userSessionService = userSessionService
                        model.signInWithAppleSuccess(authorization)
                        break
                    case .failure(let error):
                        model.signInWithAppleError(error)
                        break
                    }
                }
                .frame(minWidth: 280, maxWidth: .infinity ,minHeight: 60, maxHeight: 60, alignment: .center)
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView( model: .init(userSessionService: .init()))
    }
}
