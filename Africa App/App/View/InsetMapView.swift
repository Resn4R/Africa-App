//
//  InsetMapView.swift
//  Africa App
//
//  Created by Vito Borghi on 24/01/2024.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var regione = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: <#T##CLLocationDegrees#>),
        span: <#T##MKCoordinateSpan#>)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    InsetMapView()
}
