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
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                NavigationLink(destination: AboutView()){
                    Text("About")
                }
                
                ForEach (observedData.venues) { venue in
                    NavigationLink(destination: DetailsView(venue: venue).environmentObject(self.observedData)) {
                        VenueCellView(venue: venue)
                    }
                }
            }
            .navigationBarTitle(Text("Deptford Hop"), displayMode: .large)
        }
    }
}


#if DEBUG
struct VenueListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            VenueListView()
            /*
             VenueListView()
             .environment(\.colorScheme, .dark)
             
             VenueListView()
             .environment(\.sizeCategory, .extraExtraExtraLarge)
             
             VenueListView()
             .previewDevice("iPhone SE")
             */
        }
    }
}
#endif
