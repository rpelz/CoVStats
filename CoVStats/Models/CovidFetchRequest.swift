//
//  CovidFetchRequest.swift
//  CoVStats
//
//  Created by Robert Pelz on 22.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest : ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    //@Published var listOfCountries: [CountryLocation] = []
    
    init(listOfCountries: Bool = false) {
        //getCurrentTotals()
        getAllCountries()
        /*if (listOfCountries) {
            getListOfCountries()
        }*/
    }
    
    func getCurrentTotals() {
        
        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "52f83a7422msh9f77b6e5e6ad774p1a1ad9jsnba1686dbde46"
        ]
        
        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=json", headers: headers).responseJSON { response in
            //debugPrint(response)
            
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
                //print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let critical = json[0]["critical"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            } else {
                self.totalData = testTotalData
            }
        }
    }
    
    func getAllCountries()  {
        
        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid-193.p.rapidapi.com",
            "x-rapidapi-key": "52f83a7422msh9f77b6e5e6ad774p1a1ad9jsnba1686dbde46"
        ]
        
        AF.request("https://covid-193.p.rapidapi.com/statistics", headers: headers).responseJSON { response in
            //debugPrint(response)
            
            var allCount: [CountryData] = []
            
            if let result = response.data {
                //debugPrint(result)
                
                let json = JSON(result)
                let data = json["response"]
                //print(data)
                
                for (_, element) in data {
                    
                    let countryData = element
                    //print(countryData)
                    let country = countryData["country"].stringValue
                    //print("country: \(country)")
                    let cases = countryData["cases"]
                    let deathData = countryData["deaths"]
                    let confirmed = cases["total"].int64Value
                    let deaths = deathData["total"].int64Value
                    let critical = cases["critical"].int64Value
                    let recovered = cases["recovered"].int64Value
                    let countryObject = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: 0.0, latitude: 0.0)
                    allCount.append(countryObject)
                }
            }
            
            allCount = allCount.sorted(by: { $0.confirmed > $1.confirmed })
            self.allCountries = allCount.filter {
                $0.country.lowercased() != "all"
            }
            //print(self.allCountries)
            if let foundCountryData = self.findTotalDataInList(value: "all", in: allCount) {
                //print(foundCountryData)
                self.totalData = TotalData(confirmed: Int(foundCountryData.confirmed), critical: Int(foundCountryData.critical), deaths: Int(foundCountryData.deaths), recovered: Int(foundCountryData.recovered))
            }
        }
    }
    
    func findTotalDataInList(value searchValue: String, in array: [CountryData]) -> CountryData?
    {
        for (_, element) in array.enumerated()
        {
            //print(element.country.lowercased())
            if element.country.lowercased() == searchValue.lowercased() {
                return element
            }
        }

        return nil
    }
    
    func getListOfCountries() {
        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "52f83a7422msh9f77b6e5e6ad774p1a1ad9jsnba1686dbde46"
        ]
        
        AF.request("https://covid-19-data.p.rapidapi.com/help/countries?format=json", headers: headers).responseJSON { response in
            //debugPrint(response)
            
            var listOfCount: [CountryLocation] = []
            
            if let result = response.data {
                //debugPrint(result)
                
                let data = JSON(result)
                //print(data)
                
                for (_, element) in data {
                
                    let countryLocotion = element
                    let name = countryLocotion["name"].stringValue
                    //print("country: \(name)")
                    let alpha2code = countryLocotion["alpha2code"].stringValue
                    let alpha3code = countryLocotion["alpha3code"].stringValue
                    let longitude = countryLocotion["longitude"].doubleValue
                    let latitude = countryLocotion["latitude"].doubleValue
                    
                    let locationObject = CountryLocation(name: name, alpha2code: alpha2code, alpha3code: alpha3code, latitude: latitude, longitude: longitude)
                    //print(test)
                    listOfCount.append(locationObject)
                }
            }
            //Czechia
            //latitude:50.08804, longitude:14.42076
            listOfCount.append(CountryLocation(name: "Czechia", alpha2code: "CZ", alpha3code: "CZE", latitude: 50.08804, longitude: 14.42076))
            //self.listOfCountries = listOfCount.sorted(by: { $0.name < $1.name })
            //print(self.listOfCountries)
        }
    }
}
