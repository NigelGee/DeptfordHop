//
//  VenueData.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 14/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI
import CloudKit

let venueData: [Venue] = loadVenues("DeptfordHopData")

func loadVenues<T: Decodable>(_  crawlName: String, as type: T.Type = T.self) -> T {
 
    let container = CKContainer.default()
    let publicData = container.publicCloudDatabase
    let query = CKQuery(recordType: crawlName, predicate: NSPredicate(format: "TRUEPREDICATE", argumentArray: nil))
    
    let venueData = Venue()
    
    publicData.perform(query, inZoneWith: nil) { (venues, error) in
        if error == nil {
            for venue in venues! {
                
                venueData.name = venue["name"] as! String
                venueData.address = venue["address"] as! String
                venueData.type = venue["type"] as! String
                venueData.webAddress = venue["wedAddress"] as! String
                venueData.openingTimes = venue["openingTimes"] as! String
                venueData.venueDescription = venue["description"] as! String
                venueData.rating = venue["rating"] as! Int
//                venueData.latitude = venue["coordiante.latitude"] as! CLLocation          STORED ICLOUD AS coordinate(latitude)
//                venueData.longitude = venue["coordiante.longitude"] as! CLLocation        STORED ICLOUD AS coordinate(longitude)
//                venueData.storedImage = venue["image"] as! Image                          STORED AS ASSET
                
            }
        } else {
            print(error as Any)
        }
    }
}

 
