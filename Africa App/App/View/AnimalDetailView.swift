//
//  AnimalDetailView.swift
//  Africa App
//
//  Created by Vito Borghi on 22/01/2024.
//

import SwiftUI
import MapKit

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                //Title and Header
                Section {
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
                }
                
                //Wilderness in Pictures
                Section {
                    GroupHeaderLabelView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                        .frame(height: 220)
                }
                
                //Did you know?
                Section {
                    GroupHeaderLabelView(image: "questionmark.circle", text: "Did you know?")
                    InsetFactsView(animal: animal)
                }
                .padding(.horizontal)
                
                //Description
                Section {
                    GroupHeaderLabelView(image: "info.circle", text: "All about \(animal.name)s")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //Map
                Section {
                    GroupHeaderLabelView(image: "map", text: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)

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
