//
//  GalleryView.swift
//  Africa App
//
//  Created by Vito Borghi on 15/01/2024.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text("Gallery")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
        
        
        
    }
}

#Preview {
    GalleryView()
}
