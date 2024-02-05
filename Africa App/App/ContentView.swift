//
//  ContentView.swift
//  Africa App
//
//  Created by Vito Borghi on 14/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridActive = false
    
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListView(animal: animal)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            isGridActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundStyle(isGridActive ? Color.white : Color.accentColor)
                        }
                        
                        Button {
                            isGridActive = true
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundStyle(isGridActive ? Color.accentColor : Color.white)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
