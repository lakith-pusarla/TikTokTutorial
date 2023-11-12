//
//  CurrentProfileUserView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct CurrentProfileUserView: View {
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
        }
        
    }
}

#Preview {
    CurrentProfileUserView()
}
