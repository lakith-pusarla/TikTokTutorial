//
//  LoginViewModel.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/20/23.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    private let authService: AuthService
    init(authService: AuthService){
        self.authService = authService
    }
    
    func login(withEmail email: String, password: String) async{
        do{
            try await authService.login(withEmail: email, password: password)
            
        } catch {
            print("DEBUG: Login fail with error \(error.localizedDescription)")
        }
    }
}
