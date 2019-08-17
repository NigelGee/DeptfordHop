//
//  VenueListView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 11/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueListView: View {
    var body: some View {
        
        NavigationView {
            
            List(0..<5) { item in
                NavigationLink(destination: DetailsView()) {
                    VenueCellView()
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
