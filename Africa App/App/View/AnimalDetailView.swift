//
//  AnimalDetailView.swift
//  Africa App
//
//  Created by Vito Borghi on 22/01/2024.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                                
                    Text(animal.name.uppercased())
                        .font(.system(size: 35, weight: .heavy))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundStyle(.primary)
                        .background(
                            Color.accentColor
                                .frame(height: 6)
                                .offset(y: 24)
                        )

                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.accent)
                        .padding(.horizontal)

                
                Group {
                    HStack {
                        Image(systemName: "photo.on.rectangle.angled")
                            .foregroundStyle(.accent)
                        Text("Wilderness in Pictures")
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                }
                InsetGalleryView(animal: animal)
                    .frame(height: 220)
            }
            .navigationBarTitle("Learn About \(animal.name)s", displayMode: .inline)
        }
    }
}

let animals: [Animal] = Bundle.main.decode("animals.json")
#Preview {
    NavigationStack {
        AnimalDetailView(animal: animals[0])
    }
}
