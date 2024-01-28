//
//  VideoListView.swift
//  Africa App
//
//  Created by Vito Borghi on 15/01/2024.
//

import SwiftUI

struct VideoListView: View {
    @State private var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationStack {
            List {
                ForEach (videos) { video in
                    NavigationLink{
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                        
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationTitle("Videos")
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

#Preview {
    VideoListView()
}
