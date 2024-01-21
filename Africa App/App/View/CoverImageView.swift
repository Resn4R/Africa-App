//
//  CoverImageView.swift
//  Africa App
//
//  Created by Vito Borghi on 21/01/2024.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages = Bundle.main.decode("covers.json")
    
    var body: some View {
        
        TabView {
            
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())

    }
}

#Preview {
    CoverImageView()
}
