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
            HStack(spacing: 16){
                UserStatView(value: 5, title: "Posts")
                UserStatView(value: 2, title: "Followers")
                UserStatView(value: 15, title: "Following")
                
                // Commented after extracting in a subview
//                VStack{
//                    Text("2")
//                        .font(.subheadline)
//                        .fontWeight(.bold)
//                    Text("Follwoing")
//                        .font(.caption)
//                        .foregroundStyle(.gray)
//                }
//                .frame(width: 80, alignment: .center)
//                
//                VStack{
//                    Text("15")
//                        .font(.subheadline)
//                        .fontWeight(.bold)
//                    Text("Following")
//                        .font(.caption)
//                        .foregroundStyle(.gray)
//                }
//                .frame(width: 80, alignment: .center)
            }
            
            //Action Button
            Button{
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider()
            
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}

//struct UserStatView: View {
//    let value: Int
//    let title: String
//    var body: some View {
//        VStack{
//            Text("\(value)")
//                .font(.subheadline)
//                .fontWeight(.bold)
//            Text("\(title)")
//                .font(.caption)
//                .foregroundStyle(.gray)
//        }
//        .frame(width: 80, alignment: .center)
//    }
//}
