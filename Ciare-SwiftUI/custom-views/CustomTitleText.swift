//
//  CustomTitleText.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct CustomTitleText: View {
    
    let name: String
    
    var body: some View {
        Text(name)
            .font(.headline)
    }
}

struct CustomTitleText_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitleText(name: "Name").previewLayout(.sizeThatFits)
    }
}
