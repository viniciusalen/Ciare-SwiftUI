//
//  CustomTextField.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct CustomTextField: View {
    
    @State var content = ""
    
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $content)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "name").previewLayout(.sizeThatFits)
    }
}
