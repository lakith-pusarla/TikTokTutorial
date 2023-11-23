//
//  ContentView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel(authService: AuthService())
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
