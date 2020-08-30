//
//  Cou ntryStatisticsFetchRequest.swift
//  CoVStats
//
//  Created by Robert Pelz on 26.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CountryStatisticsFetchRequest : ObservableObject {
    
    @Published var detailedCountryData: DetailedCountryData?
    
    let headers: HTTPHeaders = [
        "x-rapidapi-host": "covid-193.p.rapidapi.com",
        "x-rapidapi-key": "52f83a7422msh9f77b6e5e6ad774p1a1ad9jsnba1686dbde46"
    ]
    
    init() {}
    
    func getStatsFor(country: String) {
        
        AF.request("https://covid-193.p.rapidapi.com/statistics?country=\(country)", headers: headers).responseJSON { response in
            //debugPrint(response)
            
            if let result = response.data {
                
                let json = JSON(result)
                //print(json)
                let countryData = json["response"][0]
                //print(countryData)
                let cases = countryData["cases"]
                let deathData = countryData["deaths"]
                
                let country = countryData["country"].stringValue
                //print("country: \(country)")
                
                let deaths = deathData["total"].int64Value
                let newDeaths = deathData["new"].int64Value
                
                let tests = countryData["tests"]["total"].int64Value
                
                let criticalCases = cases["critical"].int64Value
                let totalCases = cases["total"].int64Value
                let activeCases = cases["active"].int64Value
                let newCases = cases["new"].int64Value
                let recoveredCases = cases["recovered"].int64Value
                
                self.detailedCountryData = DetailedCountryData(country: country, confirmedCases: totalCases, newCases: newCases, recoveredCases: recoveredCases, criticalCases: criticalCases, activeCases: activeCases, deaths: deaths, newDeaths: newDeaths, testsDone: tests)
                
            }
        }
    }
}
