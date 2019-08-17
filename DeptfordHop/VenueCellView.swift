//
//  VenueCellView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 11/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueCellView: View {
    var body: some View {
        
        HStack {
            
            Image("The Full Nelson").resizable() // This to be taken from iCloud dB
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            Text("The Full Nelson")
            
            Spacer()
            
            //TODO:- change "rating" on which star tapped
            Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .imageScale(.small)
                .foregroundColor(.yellow)
            Image(systemName: "star")
                .imageScale(.small)
                .foregroundColor(.gray)
            
        }
        
    }
}

#if DEBUG
struct VenueCellView_Previews: PreviewProvider {
    static var previews: some View {
        VenueCellView()
    }
}
#endif
