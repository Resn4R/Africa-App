//
//  VideoPlayerView.swift
//  Africa App
//
//  Created by Vito Borghi on 26/01/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let video: VideoModel
    var body: some View {
        VStack{
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4")) {
                //Text(video.name)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .tint(.accent)
        .navigationTitle(video.name).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        VideoPlayerView(video: videos[0])
    }
}
