//
//  ViewController.swift
//  Minhas Viagens
//
//  Created by IFPB on 12/12/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController {
    let ifpbLat : Double = -7.134862
    let ifpbLong : Double = -34.870480

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GMSServices.provideAPIKey("AIzaSyBc7kCIRuHbT5vjgBMvA1S5012kEtNkLVs")
        
        //IFPB -7.134862, -34.870480
    
        let camera = GMSCameraPosition.camera(withLatitude: ifpbLat, longitude: ifpbLong, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: ifpbLat, longitude: ifpbLong)
        marker.title = "IFPB"
        marker.snippet = "Joao Pessoa"
        marker.map = mapView
    }


}

