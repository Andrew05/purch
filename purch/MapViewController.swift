//
//  MapViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2016-08-07.
//  Copyright © 2016 Andrew Lawrence. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapContainer: UIView!
    
    let manager = CLLocationManager()

    
    
    override func viewDidLoad() {
        
        let lat = manager.location?.coordinate.latitude
        let long = manager.location?.coordinate.longitude
        
        let camera = GMSCameraPosition.camera(withLatitude: 43.65, longitude: -79.38, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        let marker = GMSMarker()
        
        
        view = mapView
        mapView.isMyLocationEnabled = true
        
        // Creates a marker in the center of the map
        
        marker.position = CLLocationCoordinate2D(latitude: lat!, longitude: long!)
        marker.title = "Toronto"
        marker.snippet = "Canada"
        marker.icon = GMSMarker.markerImage(with: .green)
        marker.map = mapView
        mapView.isMyLocationEnabled = true
        
        if let mylocation = mapView.myLocation {
            print("User's location: \(mylocation)")
        } else {
            print("User's location is unknown")
        }
        
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocation locations: [CLLocation]) {
        if let location = locations.first {
            print("found user location \(location)")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to find user's location: \(error.localizedDescription)")
    }
}
