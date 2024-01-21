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
            
            ForEach(0..<5) {item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())

    }
}

#Preview {
    CoverImageView()
}
