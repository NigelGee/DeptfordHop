//
//  VenueListView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 11/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueListView: View {
    @EnvironmentObject var observedData: ObservedData
    static var data = [Venue]()
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section {
                    NavigationLink(destination: AboutView()){
                        Text("About")
                    }
                }
                Section(header: Text("Venues")) {
// Test to see if get data
                    ForEach (observedData.venues) { venue in
                        Text(venue.name)
                    }
// Demo
                    List(1 ..< 5) {_ in
                        NavigationLink(destination: DetailsView()) {
                            VenueCellView()
                        }
                    }

/* What should show!
                    if observedData.venues != [] {
                        ForEach (observedData.venues) { venue in
                            NavigationLink(destination: DetailsView(venue: venue).environmentObject(self.observedData)) {
                                VenueCellView(venue: venue)
                            }
                        }
                    } else {
                        Text("There was a problem getting 'crawl'. Please check your device is connected to the internet.")
                    }
*/
                }.font(.subheadline)
            }
            .navigationBarTitle(Text("Deptford Hop"), displayMode: .inline)
        }
    }
}


#if DEBUG
struct VenueListView_Previews: PreviewProvider {
    static let observedData = ObservedData()
    
    
    static var previews: some View {
        Group {
            
            VenueListView().environmentObject(observedData)
            
            
            VenueListView().environmentObject(observedData)
                .environment(\.colorScheme, .dark)
            
            /*
             VenueListView().environmentObject(observedData)
             .environment(\.sizeCategory, .extraExtraExtraLarge)
            */
             VenueListView().environmentObject(observedData)
             .previewDevice("iPhone SE")
            
        }
    }
}
#endif
