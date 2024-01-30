//
//  MapAnnotationView.swift
//  Africa App
//
//  Created by Vito Borghi on 30/01/2024.
//

import SwiftUI

struct MapAnnotationView: View {
    
    let location: NationalParkLocation
    
    @State private var animation = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(.accent, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever().repeatForever(autoreverses: true)){
                animation = 1
            }
        }
    }
}

#Preview {
    MapAnnotationView(location: nationalParks[0])
}
