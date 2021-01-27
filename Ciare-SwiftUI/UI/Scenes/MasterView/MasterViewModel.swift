//
//  MasterViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import Combine

final class MasterViewModel: ObservableObject {
    @Published var hasUserSession: Bool
    private var cancellable: AnyCancellable?
    
    init(userSessionService: UserSessionService) {
        hasUserSession = userSessionService.session != nil
        cancellable = userSessionService.$session
            .map { $0 != nil }
            .removeDuplicates()
            .assign(to: \.hasUserSession, on: self)
    }
}
