//
//  place.swift
//  school project
//
//  Created by Jack on 2022/3/22.
//

import SwiftUI
import MapKit
import Foundation
import CoreLocation





struct place: View {
    
    struct AnnotatedItem: Identifiable {
        let id = UUID()
        var name: String
        var coordinate: CLLocationCoordinate2D
        
       
    }
    private var pointsOfInterest = [
        AnnotatedItem(name: "廁所", coordinate: .init(latitude: 24.810323803153736, longitude: 120.91245398450795)),
        AnnotatedItem(name: "抽水站", coordinate: .init(latitude: 24.809989, longitude: 120.911562)),
        AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
        ]
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.810711, longitude: 120.910503), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    init() {
        MKMapView.appearance().mapType = .satellite
       }
    var body: some View {
        
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
        
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
            MapMarker(coordinate: item.coordinate, tint: .red)
        }
        .edgesIgnoringSafeArea(.all)
        
        Map(coordinateRegion: $region, interactionModes: [], showsUserLocation: true, userTrackingMode: .constant(.follow))

        
    }
}

struct place_Previews: PreviewProvider {
    static var previews: some View {
        place()
    }
}
