//
//  ContentView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var brandName = ""
    @State var rawValue = 0
    
    var body: some View {

        
        NavigationView{
            VStack(alignment: .leading) {
                CustomTitleText(name: "Empreendimento")
                CustomTextField(placeholder: "Nome da sua marca")
                    .padding(.bottom)
                CustomTitleText(name: "Tipo de negócio")
    
                Picker("Tipo de negócio", selection: $rawValue) {
                    Text("Físico").tag(0)
                    Text("Digital").tag(1)
                    Text("Ambos").tag(2)
                }.pickerStyle(SegmentedPickerStyle()).padding(.bottom)
                
                CustomTextField(placeholder: "Area de atuação")
                
                if rawValue == 0 || rawValue == 2{
                    CustomTextField(placeholder: "Localização")
                    //Plataforms()
                } else if rawValue == 1{
                    Plataforms()
                }

    
                Spacer()
            }.padding()
            .navigationBarTitle("Cadastre-se")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


