//
//  VenueName.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 11/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct VenueName: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("The Full Nelson") // This to be taken from iCloud dB
                    .font(.title)
                    .bold()
    
                HStack {
                    //TODO:- "rating" to change number of stars
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                }
                .imageScale(.large)
                .padding(.bottom, 20)
                
            
            HStack {
                Text("47 Deptford Broadway") // This to be taken from iCloud dB
                
                Spacer()
                
                Text("Vegan") // This to be taken from iCloud dB
            }
            .font(.subheadline)
            .padding(.top, -10)
            
            HStack {
                Spacer()
                Text("Tues–Fri 4–11, Sat 12–11, Sun 11–4") // This to be taken from iCloud dB
            }
            .font(.footnote)
            .padding(.top, -10)
        }
        .padding()
        .padding(.top, -10)
        
    }
}

#if DEBUG
struct VenueName_Previews: PreviewProvider {
    static var previews: some View {
        VenueName()
    }
}
#endif
