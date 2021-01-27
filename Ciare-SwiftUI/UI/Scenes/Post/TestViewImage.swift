//
//  TestViewImage.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 27/01/21.
//
import SwiftUI

struct ContentView: View {
 
    @State private var isShowPhotoLibrary = false
    @State private var isShowCamera = false
    @State private var image = UIImage()
    @State private var showingActionSheet = false
 
    var body: some View {
        VStack {
 
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(Color(#colorLiteral(red: 0.8373796344, green: 0.8474889994, blue: 0.8427985311, alpha: 1)))
                .cornerRadius(20)
                .padding()
 
            Button(action: {
                self.showingActionSheet = true
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))
 
                    Text("Photo library")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.bottom)
            }.actionSheet(isPresented: $showingActionSheet, content: {
                ActionSheet(title: Text("Escolha a fonte"), buttons: [
                        .default(Text("Galeria")) {
                            self.isShowPhotoLibrary = true
                        },
                        .default(Text("Camera")) {
                            self.isShowCamera = true
                            
                        },
                        .cancel()
                    ])
            })
            
        }.sheet(isPresented: $isShowPhotoLibrary, content: {
            ImagePicker(selectedImage: $image, sourceType: self.isShowCamera ? .camera : .photoLibrary)
        })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
