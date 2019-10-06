//
//  VenueDescription.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 11/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueDescription: View {
    var body: some View {
         
            // This to be taken from iCloud dB
        
            Text("With my friend being Vegan, we were glad to find this hidden gem. We were even happier that there were a few seats available (it’s a rather small place). The food was absolutely lovely and the service was excellent.")
                .font(.body)
                .frame(minHeight: 0, maxHeight: .infinity)
                .padding()
                
            
            
    }
}

#if DEBUG
struct VenueDescription_Previews: PreviewProvider {
    static var previews: some View {
        VenueDescription()
    }
}
#endif
