//
//  ContentViewModel.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/20/23.
//

import Foundation
import FirebaseAuth
import Combine //

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private let authService: AuthService
    private var cancellables = Set<AnyCancellable>()
    
    // User AuthService to check if user has logged in
    init(authService: AuthService){
        self.authService = authService
        setupSubscribers()
        authService.updateUserSession()
    }
    
    private func setupSubscribers(){
        authService.$userSession.sink(){ [weak self] user in
            self?.userSession = user
        }.store(in: &cancellables)
    }
}
