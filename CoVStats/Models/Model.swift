//
//  Model.swift
//  CoVStats
//
//  Created by Robert Pelz on 23.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation

struct TotalData {
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    var revoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct CountryData {
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    var revoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct DetailedCountryData {
    
    let country: String
    
    let confirmedCases: Int64
    let newCases: Int64
    
    let recoveredCases: Int64
    let criticalCases: Int64
    let activeCases: Int64
    
    let deaths: Int64
    let newDeaths: Int64
    
    let testsDone: Int64
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmedCases)
    }
    var revoveredRate: Double {
        return (100.00 * Double(recoveredCases)) / Double(confirmedCases)
    }
}

struct CountryLocation {
    let name: String
    let alpha2code: String
    let alpha3code: String
    let latitude: Double
    let longitude: Double
}

let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCountryData = CountryData(country: "Test", confirmed: 500, critical: 300, deaths: 200, recovered: 100, longitude: 0.0, latitude: 0.0)
let testCountryLocation = CountryLocation(name: "Austria", alpha2code: "AT", alpha3code: "AUT", latitude: 14.550072, longitude: 47.516231)
