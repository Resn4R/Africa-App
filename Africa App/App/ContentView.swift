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
    @State private var gridLayout = [ GridItem(.flexible()) ]
    @State private var gridColumn = 1
    @State private var toolbarIcon = "square.grid.2x2"
    
    var body: some View {
        NavigationStack {
            Group {
                if !isGridActive {
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
                } else {
                    ScrollView(.vertical) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                    AnimalGridItemView(animal: animal)
                                    .padding(10)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
            
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            withAnimation(.easeIn){
                                isGridActive = false
                            }
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundStyle(isGridActive ? Color.white : Color.accentColor)
                        }
                        
                        Button {
                            withAnimation(.easeIn){
                                isGridActive = true
                            }
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
