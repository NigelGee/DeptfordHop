//
//  MapView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 10/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 51.474305, longitude: -0.025278) // coordinates to be taken from iCloud dB
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
    
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
