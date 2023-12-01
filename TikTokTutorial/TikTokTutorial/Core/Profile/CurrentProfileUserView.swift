//
//  CurrentProfileUserView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI
import FirebaseAuth

struct CurrentProfileUserView: View {
    
    let authService: AuthService
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 2){
                    // Profile header
                    ProfileHeaderView()
                    
                    
                    // Post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    Button("Sign Out") {
                        authService.signout()
                        print("DEBUG: Signout called")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }
            }
        }
        
    }
}

#Preview {
    CurrentProfileUserView(authService: AuthService())
}
