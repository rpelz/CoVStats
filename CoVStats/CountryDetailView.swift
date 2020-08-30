//
//  CountryDetailView.swift
//  CoVStats
//
//  Created by Robert Pelz on 25.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryName: String
    
    @ObservedObject var countryStatisticsRequest = CountryStatisticsFetchRequest()
    
    var body: some View {
        VStack {
            VStack {
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.confirmedCases.formatNumber() ?? "Err", name: "Confirmed")
                    .padding(.top)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.activeCases.formatNumber() ?? "Err", name: "Active Cases", color: .orange)
                
                CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newCases.formatNumber() ?? "Err"), name: "New Cases", color: .orange)
                
                CountryDetailRow(number:  countryStatisticsRequest.detailedCountryData?.recoveredCases.formatNumber() ?? "Err", name: "Recovered Cases", color: .green)
                
                CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.revoveredRate ?? 0.0) + "%", name: "Recovery Rate", color: .green)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.testsDone.formatNumber() ?? "Err", name: "Tests Done", color: .blue)
            }// End of VStack
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            VStack {
                CountryDetailRow(number:  countryStatisticsRequest.detailedCountryData?.criticalCases.formatNumber() ?? "Err", name: "Critical Cases", color: .orange)
                    .padding(.top)  
                
                CountryDetailRow(number:  countryStatisticsRequest.detailedCountryData?.deaths.formatNumber() ?? "Err", name: "Deaths", color: .red)
                
                CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newDeaths.formatNumber() ?? "Err"), name: "New Deaths", color: .red)
                
                CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.fatalityRate ?? 0.0) + "%", name: "Fatality Rate", color: .red)

            }// End of VStack
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }// End of VStack
        .padding(.top, 25)
        .navigationBarTitle(countryName)
        .onAppear() {
            self.getStatistics()
        }
    }
    
    private func getStatistics() {
        countryStatisticsRequest.getStatsFor(country: self.countryName)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryName: "Austria")
    }
}
