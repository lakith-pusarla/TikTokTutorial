//
//  LoginView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/17/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                // Logo for app
                Image("tiktok-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                // Text fields
                VStack{
                    TextField("Enter email:", text: $email)
                        .textInputAutocapitalization(.never)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter password", text: $password)
                }
                // login button
                
                // Signup link
            }
        }
    }
}

#Preview {
    LoginView()
}
