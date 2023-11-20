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
    @StateObject var viewModel = LoginViewModel(authService: AuthService())
    
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
                    //print("DEBUG: LOGIN")
                    //viewModel.login(withEmail: email, password: password)
                } label:{
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                        .frame(width: 350, height: 44)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .padding(.vertical)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1 : 0.7)
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

// Authentication protocol to avoid unnecessary API calls
extension LoginView: AuthenticationFormProtocol{
    var formIsValid: Bool{
        return !email.isEmpty
        && isValidEmail(email)
        && !password.isEmpty
    }
    
    private func isValidEmail(_ email: String) -> Bool {
            let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
            return emailTest.evaluate(with: email)
        }
}

#Preview {
    LoginView()
}
