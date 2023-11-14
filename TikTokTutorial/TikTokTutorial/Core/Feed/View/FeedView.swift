//
//  FeedView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/11/23.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    @State private var isMuted = false
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 0){
                ForEach(viewModel.posts){post in
                    FeedCell(post: post, player: player, isMuted: isMuted)
                        .id(post.id)
                        .onAppear{ playInitialVideoIfNecessary()}
                    
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{player.play()}
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition ?? "") { oldValue, newValue in
//            print("DEBUG: Scroll position is \(newValue)")
            playVideoOnChangeofScrollPosition(postID: newValue)
        }
    }
    
    func playInitialVideoIfNecessary(){
        guard
            scrollPosition == "",
            let post = viewModel.posts.first,
            player.currentItem == nil else {return}
        let item = AVPlayerItem(url: URL(string: post.videoURL)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeofScrollPosition(postID: String){
        guard let currentPost = viewModel.posts.first(where: {$0.id == postID}) else {return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoURL)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
