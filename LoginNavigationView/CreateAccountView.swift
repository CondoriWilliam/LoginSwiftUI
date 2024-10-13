//
//  CreateAccountView.swift
//  LoginNavigationView
//
//  Created by galaxy on 28/09/24.
//

import SwiftUI

struct CreateAccountView: View {
    
    @Binding var isLoggedin:Bool
    @State private var username = ""
    @State private var user = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Registration")
                
                Image(.iconUser)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                    .padding()
                    .clipShape(Circle())
                
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                
                TextField("User", text: $user)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("ConfirmPassword", text: $confirmPassword)
                    .textFieldStyle(.roundedBorder)
                
                NavigationLink(destination: LoginView(isLoggedin: $isLoggedin)){
                    Button("Create Account", action: btnCreateAccount)
                        .padding()
                        .buttonStyle(.borderedProminent)
                }
                .navigationTitle("Login")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                
            }
            .padding(30)
            .padding(.horizontal, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding(30)
    }
    
    func btnCreateAccount(){
        isLoggedin = true
    }
}

//#Preview {
//    CreateAccountView()
//}
