//
//  ObservedData.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 19/08/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI
import Combine

final class ObservedData: ObservableObject {
    @Published var venues = venuesData

}

