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
import CloudKit

class Venue: NSObject, Identifiable {

    var racordID: CKRecord.ID!
    var id: Int!
    var name: String!
    var address: String!
    
//    var type: String!
//    var webAddress: String!
//    var openingTimes: String!
//    var venueDescription: String!
//    var rating: Int!
//    var latitude: Double!
//    var longitude: Double!
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

