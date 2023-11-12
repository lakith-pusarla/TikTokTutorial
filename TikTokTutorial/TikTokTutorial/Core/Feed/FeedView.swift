//
//  FeedView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/11/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 0){
                ForEach(0..<10){post in
                        Rectangle()
                        .fill(.pink)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay{
                            Text("Post ID: \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
