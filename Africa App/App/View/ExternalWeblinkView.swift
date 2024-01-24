//
//  ExternalWeblinkView.swift
//  Africa App
//
//  Created by Vito Borghi on 24/01/2024.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Label("Wikipedia", systemImage: "globe")
                
                Spacer()
                
                Group {
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                    Image(systemName: "arrow.up.right.square")
                }.foregroundStyle(.accent)
            }
        }
    }
}

#Preview {
    ExternalWeblinkView(animal: animals[0])
}
