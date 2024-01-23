//
//  InsetGalleryView.swift
//  Africa App
//
//  Created by Vito Borghi on 22/01/2024.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        TabView {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(width: 350, height: 400)
                }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    InsetGalleryView(animal: animals[0])
}
