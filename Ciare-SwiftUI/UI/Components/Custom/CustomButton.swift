//
//  CustomButton.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct CustomButton: View {
    @State var isSelected: Bool = false
    let name: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
            isSelected = !isSelected
        }) {
            Text(name)
                .padding(.all)
                .frame(width: 108, height: 50, alignment: .center)
                .foregroundColor(isSelected ?
                    Color("selectedButtonText") :
                    Color("unselectedButtonText"))
                .background(isSelected ? Color("orangeButton") : Color("grayButton"))
                .cornerRadius(15)
                .font(.subheadline)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(name: "Facebook", action: { }).previewLayout(.sizeThatFits)
    }
}
