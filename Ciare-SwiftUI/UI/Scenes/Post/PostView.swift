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
                    .overlay(TextView(placeholderText: "Descreva seu post aqui...", text: model.bindings.postDescription).padding())
                Image(uiImage: model.state.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 250, maxHeight: 300)
                    .background(Color(#colorLiteral(red: 0.9349476099, green: 0.9252169728, blue: 0.9252256751, alpha: 1)))
                    .cornerRadius(20)

                HStack {
                    Spacer()
                    Button(action: {model.showActionSheet()}) {
                        Image(systemName: "camera.fill")
                            .imageScale(.large)
                        
                    }   .padding(.top, -44)
                        .padding(.trailing, 18)
                    .actionSheet(isPresented: model.bindings.showingActionSheet, content: {
                        ActionSheet(title: Text("Escolha a fonte"), buttons: [
                                .default(Text("Galeria")) {
                                    model.isShowPhotoLibrary()
                                },
                                .default(Text("Camera")) {
                                    model.isShowCamera()
                                },
                                .cancel()
                            ])
                    })
                }
                .sheet(isPresented: model.bindings.isShowPhotoLibrary, content: {
                    ImagePicker(selectedImage: model.bindings.image, sourceType:.photoLibrary)
                        .sheet(isPresented: model.bindings.isShowCamera, content: {
                            ImagePicker(selectedImage: model.bindings.image, sourceType: .camera)
                    })
                })

                            
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
        }
            .padding(.horizontal)
                    
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(model: .init(initialState: .init(postDescription: "")))
    }
}
