//
//  PostGridView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct PostGridView: View {
    private let width = (UIScreen.main.bounds.width / 3) - 5
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    var body: some View {
        LazyVGrid(columns: items, spacing: 2){
            ForEach(0..<25){post in
                    Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
