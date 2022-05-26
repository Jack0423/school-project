//
//  placetest.swift
//  school project
//
//  Created by Jack on 2022/3/26.
//

import SwiftUI
import MapKit

struct MapViewUIKit: UIViewRepresentable {
    
    // 1.
    let region: MKCoordinateRegion
    let mapType : MKMapType
    
    
    // 2.
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(region, animated: false)
        mapView.mapType = mapType
        
        return mapView
    }
    
    // 3.
    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.mapType = mapType
    }
}

struct bruh: View {
    
    struct AnnotatedItem: Identifiable {
        let id = UUID()
        var name: String
        var coordinate: CLLocationCoordinate2D
    }
    private var annotationItems = [
        AnnotatedItem(name: "廁所", coordinate: .init(latitude: 24.810323803153736, longitude: 120.91245398450795)),
        AnnotatedItem(name: "抽水站", coordinate: .init(latitude: 24.809989, longitude: 120.911562)),
        AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
        ]
    
    // 1
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.809882, longitude: 120.910282) , span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
    // 2
    @State private var mapType: MKMapType = .standard
        
    var body: some View {
        ZStack {
            // 3
            MapViewUIKit(region: region, mapType: mapType)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                // 4
                Picker("", selection: $mapType) {
                    Text("Hybrid").tag(MKMapType.hybrid)
                    Text("Standard").tag(MKMapType.standard)
                    Text("Satellite").tag(MKMapType.satellite)
                }.pickerStyle(SegmentedPickerStyle())
                    .offset(y: -40)
                    .font(.largeTitle)
            }
        }
    }
}
