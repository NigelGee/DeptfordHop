//
//  DetailsView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 10/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
//    @EnvironmentObject var observedData: ObservedData
//    var venue: Venue
//
//    var venueIndex: Int {
//        observedData.venues.firstIndex(where: {$0.id == venue.id})!
//    }
//
    var body: some View {
        
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 180)
            
            PhotoView()
                .offset(y: -110)
                .padding(.bottom, -110)
            
            VenueName()
            
            Text("www.theappforest.co.uk")
                .font(.footnote)
                .padding(.top, -18)
            
            NavigationLink(destination: VenueDescriptionFull()) {
                VenueDescription()
                    .frame(minHeight: 0, maxHeight: .infinity)
            }
            .padding(.top, -10)
            
            Spacer()
            
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
//        let observedData = ObservedData()
//        return DetailsView(venue: observedData.venues[0])
//            .environmentObject(observedData)
        DetailsView()
    }
}
#endif
