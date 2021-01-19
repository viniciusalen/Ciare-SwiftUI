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
            Text("Platforms").padding(.all)
            HStack{
                CustomButton(name: "Linkedin")
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Linkedin")
                }

            }
            
        }
    }
}

struct Plataforms_Previews: PreviewProvider {
    static var previews: some View {
        Plataforms()
    }
}
