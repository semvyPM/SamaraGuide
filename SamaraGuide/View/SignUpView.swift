//
//  SignUpView.swift
//  SamaraGuide
//
//  Created by Victoria Semenycheva on 11.04.2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var loginData: String = ""
    @State private var passwordData: String = ""
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(colorScheme == .light ? "logoLight" : "logoDark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
            
            TextFieldCustomView(text: $loginData, placeholder: "Логин")
            
            SecureField("Пароль", text: $passwordData)
                .textFieldStyle(TextFieldCustomStyle())
            
            
            SecureField("Повторите пароль", text: $passwordData)
                .textFieldStyle(TextFieldCustomStyle())
            
            ButtonCustomView(buttonText: "Создать аккаунт", action: {
                print(loginData)
            })
            
            Text("[Есть аккаунт?](https://www.android.com/intl/en_in/)")
                .font(.footnote)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
        
            Spacer()
        }
        .padding()
        .background(
            Image(colorScheme == .light ? "backgroundMapLight" : "backgroundMapDark")
        )
        .ignoresSafeArea()
    }
}

#Preview {
    SignUpView()
}
