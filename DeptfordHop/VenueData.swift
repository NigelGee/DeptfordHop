//
//  VenueData.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 14/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI
import CloudKit

var venuesData: [Venue] = loadVenues()
/*
// Method with reference!
var venue: Venue!
var venues = [Venue]()
func loadVenues() -> [Venue] {
    
    let pred = NSPredicate(value: true)
    let sort = NSSortDescriptor(key: "id", ascending: true)
    let query = CKQuery(recordType: "DeptfordHopData", predicate: pred)
    query.sortDescriptors = [sort]
    
    CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { results, error in
        if let error = error {
            print(error.localizedDescription)
        } else {
            if let results = results {
                parseResults(records: results)
            }
        }
    }
    return venues
}

func parseResults(records: [CKRecord]) {
    var newVenues = [Venue]()
    
    for record in records {
        newVenues.append(record["name"] as! Venue)
    }
    
    DispatchQueue.main.async {
        venues = newVenues
    }
}
*/
// method with operation
func loadVenues() -> [Venue] {

    var newVenues = [Venue]()
    var data = [Venue]()

    let pred = NSPredicate(value: true)
    let sort = NSSortDescriptor(key: "id", ascending: true)
    let query = CKQuery(recordType: "DeptfordHopData", predicate: pred)
    query.sortDescriptors = [sort]

    let operation = CKQueryOperation(query: query)
    operation.desiredKeys = ["id","name", "address"]
    operation.resultsLimit = 50

    operation.recordFetchedBlock = { record in
        let venue = Venue()
        venue.racordID = record.recordID
        venue.id = record["id"]
        venue.name = record["name"]
        venue.address = record["address"]
        newVenues.append(venue)
    }

    operation.queryCompletionBlock = {(cursor, error) in
        DispatchQueue.main.async {
            if error == nil {
                data = newVenues
            } else {
                print(error!.localizedDescription)
            }
        }
    }

    CKContainer.default().publicCloudDatabase.add(operation)

    return data
}


