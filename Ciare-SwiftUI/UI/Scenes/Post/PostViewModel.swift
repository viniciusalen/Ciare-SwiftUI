//
//  PostViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import Foundation
import SwiftUI

final class PostViewModel: ObservableObject {
    @Published private(set) var state: PostViewState
    
    var postDescription: (
        Binding<String>
    ) {
        (
            Binding(get: {self.state.postDescription}, set: {self.state.postDescription = $0})
        )
    }
    
    init(initialState: PostViewState = .init()) {
        state = initialState
    }
}
