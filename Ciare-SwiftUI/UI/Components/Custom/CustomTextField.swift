//
//  CustomTextField.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var content: String
    
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $content)
            .padding()
            .background(RoundedRectangle(cornerRadius: 15)
                            .fill(Color("TextFieldBg"))
            )
    }
}

struct CustomTextField_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomTextField(content: .constant("Preview Text"), placeholder: "name").previewLayout(.sizeThatFits)
    }
}
