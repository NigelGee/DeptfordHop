//
//  PhotoView.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 10/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
    
    var body: some View {
        Image("The Full Nelson").resizable() // This to be taken from iCloud dB
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
#endif
