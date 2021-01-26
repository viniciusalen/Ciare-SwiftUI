//
//  PostView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import SwiftUI

struct PostView: View {
    
    @ObservedObject var model : PostViewModel
    
    var body: some View {
        VStack {
            HStack {
                Image("postImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 3) {
                    Text("Os Barés").font(.body)
                    Text("Artesanato").font(.footnote)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Limpar")
                }
            }.padding(.top)
            
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 120)
                    .foregroundColor(Color(#colorLiteral(red: 0.9349476099, green: 0.9252169728, blue: 0.9252256751, alpha: 1)))
                    .overlay(TextView(placeholderText: "Descreva seu post aqui...", text: model.postDescription).padding())
                Image("postImage")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                    .background(Color(#colorLiteral(red: 0.9323797226, green: 0.9272215962, blue: 0.9275678992, alpha: 1)))
                                        

                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Postar").font(.body)
                    }
                    .padding(.horizontal,30)
                    .padding(.vertical, 3)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(#colorLiteral(red: 1, green: 0.7150283456, blue: 0.2996534407, alpha: 1))))
                    .foregroundColor(.white)
                }
            }
            Spacer()
        }.padding(.horizontal)
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(model: .init(initialState: .init(postDescription: "")))
    }
}
