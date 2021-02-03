//
//  ContentView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var model: SignUpViewModel
    @EnvironmentObject var userSessionService: UserSessionService
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        VStack() {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading) {
                    CustomTitleText(name: "Empreendimento")
                    CustomTextField(content: model.bindings.businessName, placeholder: "Nome da sua marca")
                        .padding(.bottom)
                    CustomTitleText(name: "Tipo de negócio")
                    
                    Picker("Tipo de negócio", selection: model.bindings.businessType) {
                        Text("Físico").tag("Physical")
                        Text("Digital").tag("Digital")
                        Text("Ambos").tag("Both")
                    }.pickerStyle(SegmentedPickerStyle()).padding(.bottom)
                    
                    CustomTextField(content: model.bindings.businessArea, placeholder: "Area de atuação").padding(.bottom)
                    
                    Group {
                        if model.state.businessType == "Physical" {
                            CustomTextField(content: model.bindings.location ,placeholder: "Localização")
                        } else if model.state.businessType == "Digital" {
                            Plataforms(selectedNetworks: model.bindings.socialNetworks)
                        } else if model.state.businessType == "Both" {
                            CustomTextField(content: model.bindings.location ,placeholder: "Localização")
                            Plataforms(selectedNetworks: model.bindings.socialNetworks)
                        }
                    }
                }
            }
            SignUpButton(title: "Finalizar", action: {
                //TO-DO: Adicionar a var "registered" no model UserSession pra manipular quando o usuário já estiver registrado
                if let userId = userSessionService.session?.userId {
                    model.createInformations(context: context, userId: userId)
                }
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


