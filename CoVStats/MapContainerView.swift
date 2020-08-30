//
//  MapContainerView.swift
//  CoVStats
//
//  Created by Robert Pelz on 25.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @ObservedObject var countryStatistics = CountryStatistics()
    
    //MapView(countryData: $covidFetch.allCountries, countryLocationData: $covidFetch.listOfCountries)
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountries, countryLocationData: $countryStatistics.listOfCountries)
        }
    }


struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
