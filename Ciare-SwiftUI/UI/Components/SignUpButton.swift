//
//  SignUpButton.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 29/01/21.
//

import SwiftUI

struct CustomRoundedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.black.opacity(0.2))
    }
}

struct SignUpButton: View {
    var title: String = ""
    var action: () -> Void
    let roundedRectangle = CustomRoundedRectangle()
    @State var didTap: Bool = false
    
    var body: some View {
        ZStack {
            Text(title)
                .font(.title3)
                .bold()
            
            if didTap {
                roundedRectangle
            } else {
                roundedRectangle.hidden()
            }
        }
        .frame(
            minWidth: 100, idealWidth: .infinity,
            maxWidth: .infinity, minHeight: 40,
            idealHeight: 48, maxHeight: 40,
            alignment: .center
        )
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("orangeButton"))
        )
        .foregroundColor(.white)
        .onTapGesture {
            self.didTap = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.didTap = false
            }
            action()
        }
    }
}

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton(title: "Finalizar" ,action: { })
    }
}
