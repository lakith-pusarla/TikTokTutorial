//
//  RegistrationView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/17/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
                
                SecureField("Enter password:", text: $password)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter full name:", text: $fullname)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter username", text: $username)
                    .modifier(StandardTextFieldModifier())
            }
            
            Button{
                print("DEBUG: SIGN UP")
            } label:{
                Text("Register")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                    .frame(width: 350, height: 44)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .padding(.vertical)
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label:{
                HStack(spacing: 3){
                    Text("Have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.vertical)
                .padding(.top, 5)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
