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
    @EnvironmentObject var selectedCountry: SelectedCountry
    
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
                
                let title = "\(data.country) \n Confirmed \(data.confirmed.formatNumber())"/*\n Death \(data.deaths.formatNumber())"*/
                
                let subtitle = "Confirmed \(data.confirmed.formatNumber()),  Death \(data.deaths.formatNumber())"
                
                let coordinate = CLLocationCoordinate2D(latitude: foundCountryLocation.latitude, longitude: foundCountryLocation.longitude)
                
                allAnnotation.append(CoronaCaseAnnotation(title: title, subtitle: subtitle, coordinate: coordinate, country: data.country))
            }
        }
        uiView.annotations.forEach({ uiView.removeAnnotation($0) })
        uiView.delegate = context.coordinator
        uiView.addAnnotations(allAnnotation)
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator(self)
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
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    var country: String?
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, country: String) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.country = country
    }
}

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    var mapViewController: MapView
    
    init(_ control: MapView) {
        self.mapViewController = control
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        guard let annotation = annotation as? CoronaCaseAnnotation else {
            return nil
        }
        let identifier = "corona"
        var annotationView: MKMarkerAnnotationView
        
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            annotationView = dequeuedView
        } else {
            //Custom for View Annotation
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: nil)
            annotationView.canShowCallout = true
            //annotationView.calloutOffset = CGPoint(x: -5, y: -5)
            annotationView.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let annotation = view.annotation as? CoronaCaseAnnotation else {
            return
        }
        
        print("Touched: country: \(annotation.country ?? "No title")")
        mapViewController.selectedCountry.country = annotation.country ?? "Europe"
        mapViewController.selectedCountry.showCountryDetail = true
    }
}
