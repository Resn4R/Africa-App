//
//  AnimalGridItemView.swift
//  Africa App
//
//  Created by Vito Borghi on 05/02/2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        NavigationLink(destination: {
            AnimalDetailView(animal: animal)
        }, label: {
            Image(animal.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 12))
        })
    }
}

#Preview {
    AnimalGridItemView(animal: animals[0])
}
