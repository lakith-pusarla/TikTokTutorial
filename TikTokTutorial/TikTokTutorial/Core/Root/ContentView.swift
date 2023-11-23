//
//  ContentView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel(authService: AuthService())
    private let authService: AuthService
    init(authService: AuthService){
        self.authService = authService
    }
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                MainTabView(authService: authService)
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView(authService: AuthService())
}
