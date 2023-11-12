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
                .frame(width: 32, height: 32)
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
            
            Rectangle()
                .frame(width: 35, height: 35)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    NotificationsCell()
}
