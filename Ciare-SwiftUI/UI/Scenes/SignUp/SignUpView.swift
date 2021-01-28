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
            CustomTextField(content: model.bindings.businessName, placeholder: "Nome da sua marca")
                .padding(.bottom)
            CustomTitleText(name: "Tipo de negócio")
            
            Picker("Tipo de negócio", selection: model.bindings.rawValue) {
                Text("Físico").tag(0)
                Text("Digital").tag(1)
                Text("Ambos").tag(2)
            }.pickerStyle(SegmentedPickerStyle()).padding(.bottom)
            
            CustomTextField(content: model.bindings.businessArea, placeholder: "Area de atuação").padding(.bottom)
            
            Group {
                if model.state.rawValue == 0{
                    CustomTextField(content: model.bindings.location ,placeholder: "Localização")
                } else if model.state.rawValue == 1{
                    Plataforms()
                } else if model.state.rawValue == 2{
                    CustomTextField(content: model.bindings.location ,placeholder: "Localização").padding(.bottom)
                    Plataforms()
                }
            }
            
            Spacer()
            
            Button("Finalizar", action: {
                //TO-DO: Adicionar a var "registered" no model UserSession pra manipular quando o usuário já estiver registrado
                model.signUpUser()
            })
            
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


