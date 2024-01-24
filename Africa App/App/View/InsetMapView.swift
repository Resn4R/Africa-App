//
//  InsetMapView.swift
//  Africa App
//
//  Created by Vito Borghi on 24/01/2024.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion (
        center: CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: 16.4377599 ),
        span: MKCoordinateSpan(latitudeDelta: 90, longitudeDelta: 90.0)
    )
    
    var body: some View {
        Map(initialPosition: MapCameraPosition.region(region))
            .overlay(
                NavigationLink(destination: MapView(), label: {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .bold()
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    )
                })
                .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    InsetMapView()
}
