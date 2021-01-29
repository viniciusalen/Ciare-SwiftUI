//
//  FeedView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 28/01/21.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var model : FeedViewModel
    
    var body: some View {
        List{
            CustomPost(brandName: model.bindings.brandName, text: model.bindings.text, image: model.bindings.image, businessArea: model.bindings.businessArea, perfilImage: model.bindings.perfilImage)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(model: .init(initialState: .init()))
    }
}
