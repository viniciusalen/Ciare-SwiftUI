//
//  ContentView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var model: SignUpViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomTitleText(name: "Empreendimento")
            CustomTextField(placeholder: "Nome da sua marca")
                .padding(.bottom)
            CustomTitleText(name: "Tipo de negócio")
            
            Picker("Tipo de negócio", selection: model.bindings.rawValue) {
                Text("Físico").tag(0)
                Text("Digital").tag(1)
                Text("Ambos").tag(2)
            }.pickerStyle(SegmentedPickerStyle()).padding(.bottom)
            
            CustomTextField(placeholder: "Area de atuação").padding(.bottom)
            
            Group {
                if model.state.rawValue == 0{
                    CustomTextField(placeholder: "Localização")
                } else if model.state.rawValue == 1{
                    Plataforms()
                } else if model.state.rawValue == 2{
                    CustomTextField(placeholder: "Localização").padding(.bottom)
                    Plataforms()
                }
            }
            
            Spacer()
        }.padding()
        .navigationBarTitle("Cadastre-se")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUpView(model: .init(
                initialState: .init()
            ))
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
    }
}


