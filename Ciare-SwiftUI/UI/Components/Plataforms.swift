//
//  Plataforms.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 19/01/21.
//

import SwiftUI

struct Plataforms: View {
    @Binding var selectedNetworks: [String]
        
    private let availableNetworks: [String] = ["Linkedin", "Facebook", "WhatsApp", "TikTok", "Twitter", "Instagram"]
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack{
            HStack {
                Text("Plataformas")
                    .font(.headline)
                Spacer()
            }
            LazyVGrid(columns: columns, content: {
                ForEach(availableNetworks, id: \.self) { network in
                    CustomButton(name: network){
                        let elementIndex = selectedNetworks.firstIndex(of: network)
                        
                        if elementIndex == nil {
                            selectedNetworks.append(network)
                        } else {
                            selectedNetworks.remove(at: elementIndex!)
                        }
                    }
                }
            })
        }
    }
}

struct Plataforms_Previews: PreviewProvider {
    struct BindingTestHolder: View {
        @State var test: [String] = []
        
        var body: some View {
            Plataforms(selectedNetworks: $test).previewLayout(.sizeThatFits)
        }
    }
    
    static var previews: some View {
        BindingTestHolder()
    }
}
