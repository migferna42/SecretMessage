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
        
        let location = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 37.775345888, longitude: -3.78393), altitude: 30)
        let pin = UIImage(named: "home")!
        let annotationNode = LocationAnnotationNode(location: location, image: pin)
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
    }

}

