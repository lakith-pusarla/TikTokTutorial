//
//  ProfileHeaderView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 18){
            VStack(spacing: 10){
                // Profile picture
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                // Username
                Text("@lakith_pusarla")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // Stats
            HStack(spacing: 10){
                VStack{
                    Text("5")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Posts")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)
                
                VStack{
                    Text("2")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Follwoing")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)
                
                VStack{
                    Text("15")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("Following")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .frame(width: 80, alignment: .center)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
