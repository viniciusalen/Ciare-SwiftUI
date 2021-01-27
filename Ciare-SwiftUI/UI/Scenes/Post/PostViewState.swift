//
//  PostViewState.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import Foundation
import SwiftUI

struct PostViewState: Equatable {
    var postDescription: String = ""
    var isShowPhotoLibrary : Bool = false
    var isShowCamera : Bool = false
    var showingActionSheet: Bool = false
    var image: UIImage = UIImage()
}
