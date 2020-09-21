//
//  SelectedCountry.swift
//  CoVStats
//
//  Created by Robert Pelz on 20.09.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation

class SelectedCountry: ObservableObject {
    
    @Published var country: String = "Austria"
    @Published var showCountryDetail = false
    
    init() {}
}
