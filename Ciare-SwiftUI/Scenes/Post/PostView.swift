//
//  PostView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(
                    Circle().stroke(Color.black, lineWidth: 1.0))
                VStack(alignment: .leading, spacing: 3, content: {
                    Text("Os barés").font(.body)
                    Text("Artesanato").font(.footnote)
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Limpar")
                }
            }.padding(.horizontal)
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.8373796344, green: 0.8474889994, blue: 0.8427985311, alpha: 1)))
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .frame(height: 120)
            
            Image("postImage")
                .resizable()
                .padding()
            
            HStack(spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Limpar")
                }
            }).padding(.horizontal)
            
            Spacer()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
