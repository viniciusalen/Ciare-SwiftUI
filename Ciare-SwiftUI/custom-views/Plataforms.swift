//
//  Plataforms.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct Plataforms: View {
    var body: some View {
        VStack{
            HStack {
                Text("Platforms")
                Spacer()
            }
            HStack{
                CustomButton(name: "Linkedin")
                CustomButton(name: "Facebook")
                CustomButton(name: "WhatsApp")
            }
            HStack{
                CustomButton(name: "Tiktok")
                CustomButton(name: "Twitter")
                CustomButton(name: "Instagram")
            }
            
        }.padding(.all)
    }
}

struct Plataforms_Previews: PreviewProvider {
    static var previews: some View {
        Plataforms().previewLayout(.sizeThatFits)
    }
}
