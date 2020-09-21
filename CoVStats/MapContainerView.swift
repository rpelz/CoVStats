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
    @EnvironmentObject var selectedCountry: SelectedCountry
    @State var showModal = false
    
    //MapView(countryData: $covidFetch.allCountries, countryLocationData: $covidFetch.listOfCountries)
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountries, countryLocationData: $countryStatistics.listOfCountries)
            .sheet(isPresented: $selectedCountry.showCountryDetail) {
                CountryDetailView(countryName: selectedCountry.country, showCloseButton: true)
            }
            /*.onTapGesture {
                showModal = true;
            }*/
        }
    }


struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
