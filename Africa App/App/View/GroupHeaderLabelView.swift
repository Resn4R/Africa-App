//
//  GroupHeaderLabelView.swift
//  Africa App
//
//  Created by Vito Borghi on 24/01/2024.
//

import SwiftUI

struct GroupHeaderLabelView: View {
    @State var image: String
    @State var text: String
    
    var body: some View {
        Group {
            HStack {
                Image(systemName: image)
                    .foregroundStyle(.accent)
                Text(text)
                    .foregroundStyle(.white)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    GroupHeaderLabelView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
}
