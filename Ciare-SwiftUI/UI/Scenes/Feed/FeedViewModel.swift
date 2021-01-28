//
//  FeedViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 28/01/21.
//

import Foundation
import SwiftUI

final class FeedViewModel: ObservableObject{
    @Published private(set)var state: FeedViewState
    
    var bindings: (
        brandName: Binding<String>,
        text: Binding<String>,
        businessArea: Binding<String>,
        perfilImage: Binding<UIImage>,
        image: Binding<UIImage>
    ) {
        (
            brandName: Binding(get: {self.state.brandName}, set: { self.state.brandName = $0 }),
            text: Binding(get: {self.state.text}, set: { self.state.text = $0 }),
            businessArea: Binding(get: {self.state.businessArea}, set: { self.state.businessArea = $0 }),
            perfilImage: Binding(get: {self.state.perfilImage}, set: { self.state.perfilImage = $0 }),
            image: Binding(get: {self.state.image}, set: { self.state.image = $0 })
        )
    }
    
    init(initialState: FeedViewState = .init()) {
        state = initialState
    }
    
}
