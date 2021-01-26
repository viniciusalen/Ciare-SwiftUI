//
//  Post.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 25/01/21.
//

import Foundation
import CloudKit

class Post: Equatable {
    static func == (lhs: Post, rhs: Post) -> Bool {
        return lhs.id == rhs.author_id
    }
    
    var id: String
    var author_id: String
    var description: String
    var image: CKAsset
        
    init(id: String , author_id: String, description: String, image: CKAsset) {
        self.id = id
        self.author_id = author_id
        self.description = description
        self.image = image
    }
}

