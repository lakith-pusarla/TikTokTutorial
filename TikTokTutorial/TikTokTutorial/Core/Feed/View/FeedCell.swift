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
    var player: AVPlayer
    @State private var isMuted = false
    // Experiment
    @State private var showIcon = false
    @State private var iconDisplayTimer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()


    

    
    init(post: Post, player: AVPlayer){
        self.post = post
        self.player = player
//        self.player = AVPlayer(url: URL(string: post.videoURL)!)
    }
    var body: some View {
        
        ZStack{
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])

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
            // Experiment
            if showIcon{
                Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.fill")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.white)
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 0.2), value: showIcon)
                    .onAppear{
                        showIcon = false
                    }
                
            }
        }
//        .onTapGesture {
//            switch player.timeControlStatus {
//            case .paused:
//                player.isMuted = true
//            case .waitingToPlayAtSpecifiedRate:
//                break
//            case .playing:
//                player.isMuted = false
//            @unknown default:
//                break
        .onTapGesture {
            isMuted.toggle()
            player.isMuted = isMuted
            showIcon = true
            
//            switch isMuted {
//            case true:
//                isMuted = false
//                player.isMuted = false
//
//
//            case false:
//                isMuted = true
//                player.isMuted = true
        }
                
    }
       
}



#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""), player: AVPlayer())
}
