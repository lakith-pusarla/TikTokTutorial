//
//  NotificationsCell.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct NotificationsCell: View {
    
    var body: some View {
        
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundStyle(Color(.systemGray5))
            HStack{
                // Concatenating text instead of different texts
                Text("balayya_babu")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked your post about being a fan of his")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    NotificationsCell()
}
