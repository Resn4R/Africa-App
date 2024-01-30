//
//  MapModel.swift
//  Africa App
//
//  Created by Vito Borghi on 30/01/2024.
//

import Foundation
import MapKit

let nationalParks: [NationalParkLocation] = Bundle.main.decode("locations.json")

struct NationalParkLocation: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
