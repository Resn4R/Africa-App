//
//  VideoModel.swift
//  Africa App
//
//  Created by Vito Borghi on 26/01/2024.
//

import Foundation

let videos: [VideoModel] = Bundle.main.decode("videos.json")

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
