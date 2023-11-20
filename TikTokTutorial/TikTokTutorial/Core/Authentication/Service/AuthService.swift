//
//  AuthService.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/20/23.
//

import Foundation
import Firebase

class AuthService{
    func login(withEmail email: String, password: String) async throws{
        print("DEBUG: Login with email: \(email)")
    }
    
    func createUser(withEmail email: String, password: String, username: String, fullname: String) async throws{
        
    }
    
    func signout(){
        
    }
}
