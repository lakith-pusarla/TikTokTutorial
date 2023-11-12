//
//  FeedCell.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI
// Native SwiftUI video player
import AVKit

struct FeedCell: View {
    let post: Post
    var body: some View {
        ZStack{
            VideoPlayer(player: AVPlayer(url: URL(string: post.videoURL)!))
                .containerRelativeFrame([.horizontal, .vertical])
////            .overlay{
////                Text("Post ID: \(post)")
////                    .foregroundStyle(.white)
////            }
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading) {
                        
                        Text("Lakith Pusarla")
                        
                            .fontWeight(.semibold)
                        
                        Text("Jai Balayya is my anthem")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack(spacing: 25){
                        
                        Circle()
                            .frame(width: 45, height: 45)
                            .foregroundStyle(.gray)
                        
                        Button{
                            // Action for button
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 25)
                                .foregroundStyle(.white)
                                
                                Text("41")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                                
                            }
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            VStack {
                                Image(systemName: "ellipses.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 25)
                                    .foregroundStyle(.white)
                                
                                Text("1718")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 28, height: 25)
                                .foregroundStyle(.white)
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.bottom, 84)
                
            }
            .padding()
            
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""))
}
