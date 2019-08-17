//
//  Venue.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 13/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI
import CoreLocation
import UIKit

class Venue: NSObject, Identifiable, Decodable {
    var id: Int = 0
    var name: String = ""
    var address: String = ""
    var type: String = ""
    var webAddress: String = ""
    var openingTimes: String = ""
    var venueDescription: String = ""
    var rating: Int = 0
    var latitude: Double = 0.0
    var longitude: Double = 0.0
//    var storedImage: Image  = image!!
    
//    fileprivate var coordinates: Coordinates
    
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

