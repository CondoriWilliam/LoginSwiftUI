//
//  LoginView.swift
//  LoginNavigationView
//
//  Created by galaxy on 28/09/24.
//

import SwiftUI

struct LoginView: View {
   
    @Binding var isLoggedin:Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Login")
                
                Image(.iconUser)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                    .padding()
                    .clipShape(Circle())
                
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)	
                
                Button("Login", action: btnLogin)
                    .padding()
                    .buttonStyle(.borderedProminent)
                
                NavigationLink(destination: CreateAccountView(isLoggedin: $isLoggedin)){
                    Text("Create may account")
                }
                .navigationTitle("Login")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
            .padding(60)
            .padding(.horizontal, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding(30)
    }
    
    func btnLogin(){
        isLoggedin = true
    }
}

//#Preview {
//    LoginView()
//}
