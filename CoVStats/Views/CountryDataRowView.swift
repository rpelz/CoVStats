//
//  CountryDataRowView.swift
//  CoVStats
//
//  Created by Robert Pelz on 24.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        HStack{
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 100, alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .lineLimit(1)
                .minimumScaleFactor(0.7)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
                .lineLimit(1)
                .minimumScaleFactor(0.7)
                .frame(width: 55, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
                .lineLimit(1)
                .minimumScaleFactor(0.7)
                .frame(width: 65, height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
