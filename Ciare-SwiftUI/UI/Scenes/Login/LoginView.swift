//
//  LoginView.swift
//  Ciare-SwiftUI
//
//  Created by Vinicius Alencar on 26/01/21.
//

import SwiftUI
 
struct LoginView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Ciare")
                    .font(.largeTitle)
                    .padding(.bottom)
                    .foregroundColor(Color(#colorLiteral(red: 0.1212012246, green: 0.2852312922, blue: 0.74481529, alpha: 1)))
                Spacer()
                SignInWithApple()
                    .frame(width: .infinity, height: 60)
                    .padding()
                    
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
