//
//  GalleryView.swift
//  Africa App
//
//  Created by Vito Borghi on 15/01/2024.
//

import SwiftUI

struct GalleryView: View {
    @State private var selectedAnimal: String = "lion"
    
    let haptics = UIImpactFeedbackGenerator(style: .light)

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 30) {
                
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { _, _ in
                        withAnimation(.easeIn) {
                            gridSwitch()
                        }
                        haptics.impactOccurred()
                    }
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                    }
                }
                .onAppear {
                    gridSwitch()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
