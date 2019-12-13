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
    var Lat : Double = -7.135801
    var Long : Double = -34.874500
    var localSelecionado: Cidade?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GMSServices.provideAPIKey("AIzaSyBc7kCIRuHbT5vjgBMvA1S5012kEtNkLVs")
        
        displayOnMap(lat: Lat, long: Long, nome: "IFPB")
        
    }
    
    func displayOnMap(lat: Double, long: Double, nome: String){
        let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: long, zoom: 17.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: lat, longitude: long)
        marker.title = nome
        marker.map = mapView
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if(localSelecionado?.nome != nil) {
            displayOnMap(lat: localSelecionado!.latitude, long: localSelecionado!.longitude, nome: localSelecionado!.nome)
        }
    }
}

