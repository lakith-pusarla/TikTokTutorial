//
//  UserCell.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading){
                Text("Test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("test_user_2")
                    .font(.footnote)
            }
            Spacer()
        }
       // .padding(.horizontal)
        
    }
}

#Preview {
    UserCell()
}
