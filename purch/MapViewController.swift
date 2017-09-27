//
//  MapViewController.swift
//  purch
//
//  Created by Andrew Lawrence on 2016-08-07.
//  Copyright © 2016 Andrew Lawrence. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: UIView!
    
    override func viewDidLoad() {
        
        let camera = GMSCameraPosition.camera(withLatitude: 43.65, longitude: -79.38, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        mapView.isMyLocationEnabled = true
        
        if let mylocation = mapView.myLocation {
            print("User's location: \(mylocation)")
        } else {
            print("User's location is unknown")
        }
        
        
        
        // Creates a marker in the center of the map
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Toronto"
        marker.snippet = "Canada"
        marker.map = mapView
    }
}
