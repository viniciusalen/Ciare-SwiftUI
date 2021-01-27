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
    
    func showActionSheet (){
        state.showingActionSheet = true
    }
    
    func isShowPhotoLibrary() {
        state.isShowPhotoLibrary = true
    }
    
    func isShowCamera(){
        state.isShowCamera = true
    }
    
    func clearButton() {
        state.postDescription = ""
        state.image = UIImage()
    }
    
    var bindings: (
        postDescription: Binding<String>,
        isShowPhotoLibrary: Binding<Bool>,
        isShowCamera: Binding<Bool>,
        showingActionSheet: Binding<Bool>,
        image: Binding<UIImage>
    ) {
        (
            postDescription: Binding(get: { self.state.postDescription }, set: { self.state.postDescription = $0 } ),
            isShowPhotoLibrary: Binding(get: { self.state.isShowPhotoLibrary }, set: { self.state.isShowPhotoLibrary = $0 } ),
            isShowCamera: Binding(get: { self.state.isShowCamera }, set: { self.state.isShowCamera = $0 } ),
            showingActionSheet: Binding(get: { self.state.showingActionSheet }, set: { self.state.showingActionSheet = $0 } ),
            image: Binding(get: { self.state.image }, set: { self.state.image = $0 } )
        
        )
    }
    
    init(initialState: PostViewState = .init()) {
        state = initialState
    }
}
