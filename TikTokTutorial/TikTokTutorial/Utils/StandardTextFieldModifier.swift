//
//  StandardTextFieldModifier.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/17/23.
//

import SwiftUI
// Custom view modifier for text fields

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 24)
    }
}
