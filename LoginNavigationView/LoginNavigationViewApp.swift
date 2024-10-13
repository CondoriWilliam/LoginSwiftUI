//
//  LoginNavigationViewApp.swift
//  LoginNavigationView
//
//  Created by galaxy on 28/09/24.
//

import SwiftUI

@main
struct LoginNavigationViewApp: App {
    
    @State var isLoggedin:Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedin {
                HomeView()
            } else {
                LoginView(isLoggedin: $isLoggedin)	
            }
        }
    }
}
