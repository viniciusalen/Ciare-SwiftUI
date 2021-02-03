//
//  MasterView.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import SwiftUI
import CoreData

struct MasterView: View {
    @ObservedObject var model: MasterViewModel
    @Environment(\.managedObjectContext) var context
    @EnvironmentObject var userSessionService: UserSessionService
    
    var body: some View {
        sendUserToView()
    }
    
    func sendUserToView() -> AnyView {
        if model.hasUserSession {
            return checkIfUserHasAccount()
        } else {
            return AnyView(LoginView(model: .init(userSessionService: userSessionService)))
        }
    }
    
    func checkIfUserHasAccount() -> AnyView {
        let user = model.fetchUserInformationWith(id: userSessionService.session!.userId, context: context)
        
        if user == nil {
            return AnyView(SignUpView(model: .init(initialState: .init()))
                            .environmentObject(userSessionService))
        } else {
            return AnyView(FeedView(model: .init(initialState: .init()))
                            .environmentObject(userSessionService))
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView(model: .init(userSessionService: .init()))
    }
}
