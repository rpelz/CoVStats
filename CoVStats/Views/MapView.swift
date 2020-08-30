//
//  MapView.swift
//  CoVStats
//
//  Created by Robert Pelz on 25.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var countryData: [CountryData]
    @Binding var countryLocationData: [CountryLocation]
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView();
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        var allAnnotation: [CoronaCaseAnnotation] = []
        
        //print(countryData)
        //print(countryLocationData)
        
        for data in countryData {
            
            if let foundCountryLocation = self.findLocationDataInList(value: data.country, in: self.countryLocationData) {
                //print(foundCountryLocation)
                
                let title = "\(data.country)\n Confirmed \(data.confirmed.formatNumber())\n Death \(data.deaths.formatNumber())"
                
                let coordinate = CLLocationCoordinate2D(latitude: foundCountryLocation.latitude, longitude: foundCountryLocation.longitude)
                
                allAnnotation.append(CoronaCaseAnnotation(title: title, coordinate: coordinate))
            }
        }
        uiView.annotations.forEach({ uiView.removeAnnotation($0) })
        uiView.addAnnotations(allAnnotation)
    }
    
    func findLocationDataInList(value searchValue: String, in array: [CountryLocation]) -> CountryLocation?
    {
        /*print("------------")
        print(searchValue)
        print("------------")*/
        
        for (_, element) in array.enumerated()
        {
            //print(element)
            //print(element.name.lowercased())
            let correctedName = element.name.replacingOccurrences(of: " ", with: "-")
            if correctedName.lowercased() == searchValue.lowercased() {
                return element
            }
        }

        return nil
    }
    
}

class CoronaCaseAnnotation: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
