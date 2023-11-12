//
//  FeedCell.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack{
            Rectangle()
            .fill(.pink)
            .containerRelativeFrame([.horizontal, .vertical])
            .overlay{
                Text("Post ID: \(post)")
                    .foregroundStyle(.white)
            }
            VStack{
                Spacer()
                
                HStack{
                    VStack(alignment: .leading) {
                        
                        Text("Lakith Pusarla")
                        
                            .fontWeight(.semibold)
                        
                        Text("Jai Balayya is my anthem")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack{
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(.white)
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "ellipses.bubble.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(.white)
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(.white)
                        }
                        
                        Button{
                            // Action for button
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(.white)
                        }
                    }
                }
                
            }
            .padding()
            
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
