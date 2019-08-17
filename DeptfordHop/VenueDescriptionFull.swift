//
//  VenueDescriptionFull.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 14/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueDescriptionFull: View {
    var body: some View {
        VStack {
            
            VenueDescription()
            
            Spacer()
            
            Text("By Steven Staples, Photos by Nick HIll")
                .font(.footnote)
        }
    }
}

#if DEBUG
struct VenueDescriptionFull_Previews: PreviewProvider {
    static var previews: some View {
        VenueDescriptionFull()
    }
}
#endif
