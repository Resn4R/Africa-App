//
//  MApView.swift
//  Africa App
//
//  Created by Vito Borghi on 15/01/2024.
//

import SwiftUI
import MapKit

struct MapView: View {

    @State private var cameraPosition: MapCameraPosition = {
        
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        let cameraPos = MapCameraPosition.region(mapRegion)
        
        return cameraPos
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(locations) { location in
                Annotation("", coordinate: location.location) {
                    MapAnnotationView(location: location)
                }
            }
        }
        .overlay {
            HStack (alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .opacity(0.6)
            )
        }
    }
}

#Preview {
    MapView()
}
