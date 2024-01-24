//
//  InsetFactsView.swift
//  Africa App
//
//  Created by Vito Borghi on 24/01/2024.
//

import SwiftUI

struct InsetFactsView: View {
    var animal: Animal
    
    var body: some View {
        GroupBox{
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .frame(minWidth: 148, minHeight: 168, maxHeight: 180)
    }
}

#Preview {
    InsetFactsView (animal: animals[0])
}
