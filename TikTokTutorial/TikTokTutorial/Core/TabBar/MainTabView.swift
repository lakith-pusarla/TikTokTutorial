//
//  MainTabView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/11/23.
//

import SwiftUI


struct MainTabView: View {
    @State private var selectedTab = 0
    private let authService: AuthService
    init(authService: AuthService){
        self.authService = authService
    }
    
    var body: some View {
        
         TabView(selection: $selectedTab){
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(0)
             
            ExploreView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.3.fill" : "person.3")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{selectedTab = 1}
                .tag(1)
             
            Text("Upload posts")
                .tabItem { Image(systemName: "plus") }
                .onAppear{selectedTab = 2}
                .tag(2)
             
             
            NotificationsView()
                .tabItem {
                    VStack{
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear{selectedTab = 3}
                .tag(3)
             
            CurrentProfileUserView(authService: authService)
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
         .tint(.black)
    }
}

#Preview {
    MainTabView(authService: AuthService())
}
