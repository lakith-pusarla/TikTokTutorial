//
//  NotificationsView.swift
//  TikTokTutorial
//
//  Created by Lakith Pusarla on 11/12/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 18){
                    ForEach(0..<10){notification in
                            NotificationsCell()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationsView()
}
