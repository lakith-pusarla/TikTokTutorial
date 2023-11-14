//
//  FeedViewModel.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var posts = [Post]()
    let videoURLS = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init(){
        fetchPosts()
    }
    
    func fetchPosts(){
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoURLS[0]),
            .init(id: NSUUID().uuidString, videoURL: videoURLS[1]),
            .init(id: NSUUID().uuidString, videoURL: videoURLS[2]),
            .init(id: NSUUID().uuidString, videoURL: videoURLS[3])
        ]
    }
}
