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
                CustomTitleText(name: "Company")
                CustomTextField(placeholder: "Brand name")
                CustomTitleText(name: "Business Type")
    
                Picker("Business Type", selection: $rawValue) {
                    Text("Physical").tag(0)
                    Text("Digital").tag(1)
                    Text("Both").tag(2)
                }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal)
                
                CustomTextField(placeholder: "Business area")
                
                
                if rawValue == 0 || rawValue == 2{
                    CustomTextField(placeholder: "Location")
                    Plataforms()
                }

    
                Spacer()
            }.padding(.horizontal)
            .navigationBarTitle("Register")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


