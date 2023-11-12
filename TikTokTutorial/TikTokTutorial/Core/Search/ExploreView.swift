//
//  ExploreView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0..<20){user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ExploreView()
}
