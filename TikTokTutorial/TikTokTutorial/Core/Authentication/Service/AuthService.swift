//
//  AuthService.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/20/23.
//

import Firebase
import FirebaseAuth

class AuthService{
    // Login view and Registration view can authenticate a user
    // Content view needs AuthService to check if user has logged in or not
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws{
        print("DEBUG: Login with email: \(email)")
    }
    
    func createUser(withEmail email: String, password: String, username: String, fullname: String) async throws{
//        print("DEBUG: User Info email: \(email) \(username) \(fullname)")
        
        // Adding actual code to create user
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
            throw error
        }
        
    }
    
    func signout(){
        try? Auth.auth().signOut() // user is signed out on backend
        self.userSession = nil // update routing logic by clearing user session
    }
}
