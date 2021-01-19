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
                Text("Company")
                    .font(.headline)
                    .padding(.top)
                    .padding(.horizontal)
                CustomTextField(placeholder: "Brand name")
                
                Text("Business Type")
                    .font(.headline)
                    .padding(.all)
    
                Picker("Business Type", selection: $rawValue) {
                    Text("Physical").tag(0)
                    Text("Digital").tag(1)
                    Text("Both").tag(2)
                    
                }.pickerStyle(SegmentedPickerStyle())
                
                CustomTextField(placeholder: "Business area")
                
                
                if rawValue == 0 || rawValue == 2{
                    CustomTextField(placeholder: "Location")
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


