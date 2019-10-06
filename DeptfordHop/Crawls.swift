//
//  Crawls.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 03/10/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct Crawls: View {
    
    static let crawlNames = ["Deptford Hop", "Bermondsey Mile", "Circle Line"]
    
    static private var crawlName = 0
    
    var body: some View {
        NavigationView {
           
                Form {
                    Section {
                        Text("Featured")
                    }
                    
                    Section {
                        ForEach(0 ..< Self.crawlNames.count) {
                            Text(Crawls.crawlNames[$0])
                        }
                    }
                }
                .navigationBarTitle(Text("Craft Ale Crawls"))
            }
        
    }
}

struct Crawls_Previews: PreviewProvider {
    static var previews: some View {
        Crawls()
    }
}
