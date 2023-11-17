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
                Spacer()
                // Logo for app
                Image("tiktok-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding(30)
                // Text fields
                VStack{
                    TextField("Enter email:", text: $email)
                        .textInputAutocapitalization(.never)
                        .modifier(StandardTextFieldModifier())
                    
                    SecureField("Enter password", text: $password)
                        .modifier(StandardTextFieldModifier())
                }
                
                // Forgot password link
                NavigationLink{
                    Text("Forgot Password")
                } label:{
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                // login button
                
                Button{
                    print("DEBUG: LOGIN")
                } label:{
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                        .frame(width: 350, height: 44)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                }
                .padding(.vertical)
                Spacer()
                
                
                // Signup link
                Divider()
                NavigationLink{
                    RegistrationView()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                    .padding(.top, 5)
                }
                
            }
        }
    }
}

#Preview {
    LoginView()
}
