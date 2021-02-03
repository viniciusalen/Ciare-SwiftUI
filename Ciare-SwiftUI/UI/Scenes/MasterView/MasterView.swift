//
//  MasterView.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var model: MasterViewModel
    @EnvironmentObject var userSessionService: UserSessionService

    var body: some View {
        sendUserToView()
    }
    
    func sendUserToView() -> AnyView {
        if model.hasUserSession {
            return AnyView(
                SignUpView(model: .init(initialState: .init()))
                    .environmentObject(userSessionService)
            )
        } else {
            return AnyView(LoginView(model: .init(userSessionService: userSessionService)))
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView(model: .init(userSessionService: .init()))
    }
}
