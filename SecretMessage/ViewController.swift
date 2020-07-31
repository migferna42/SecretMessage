//
//  ViewController.swift
//  SecretMessage
//
//  Created by Miguel Ángel Fernández Carrillo on 18/07/2020.
//

import UIKit
import ARCL
import CoreLocation

class ViewController: UIViewController {

    var sceneLocationView = SceneLocationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        sceneLocationView.frame = view.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 37.775345888, longitude: -3.78393), altitude: 30)
        var pin = UIImage(named: "home")!
        var annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        //sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        
        location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 40.5473141, longitude: -3.6623187), altitude: 20)
        pin = UIImage(named: "42MadridFTel")!
        annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        
        location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 40.5145999, longitude: -3.6649178), altitude: 20)
        pin = UIImage(named: "42MadridFTel")!
        annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
    }

}

