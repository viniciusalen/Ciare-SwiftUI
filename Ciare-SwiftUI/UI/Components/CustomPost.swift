//
//  FeedView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 28/01/21.
//

import SwiftUI

struct CustomPost: View {
    
    @Binding var brandName: String
    @Binding var text: String
    @Binding var image: UIImage
    @Binding var businessArea: String
    @Binding var perfilImage: UIImage
    
    var body: some View {
        VStack {
            HStack {
                Image(uiImage: perfilImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 3) {
                    Text(brandName).font(.body)
                    Text(businessArea).font(.footnote)
                }
                Spacer()
                
            }
            
            VStack {
                
                TextView(isSelectable: false, placeholderText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.incididunt ut labore et dolore magna aliqua.", text: $text).padding(.horizontal)
                    
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 50, idealHeight: 50, maxHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 250, maxHeight: 280)
                    .background(Color(#colorLiteral(red: 0.9349476099, green: 0.9252169728, blue: 0.9252256751, alpha: 1)))
                    .cornerRadius(20)

            }
    
        }
            .padding()
                    
    }
}

struct CustomPost_Previews: PreviewProvider {
    static var previews: some View {
        CustomPost(brandName: .constant("Os Barés"), text: .constant(""), image: .constant(UIImage()), businessArea: .constant("Artesanato"), perfilImage: .constant(UIImage()))
    }
}

