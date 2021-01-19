//
//  CustomButton.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct CustomButton: View {
    
    let name: String
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text(name)
                .padding(.all)
                .foregroundColor(Color("ColorTextButton"))
                .background(Color("colorButton"))
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(name: "Facebook").previewLayout(.sizeThatFits)
    }
}
