//
//  ViewController.swift
//  ARKit Demo
//
//  Created by Alex Baratti on 8/2/20.
//  Copyright © 2020 Alex Baratti. All rights reserved.
//

import ARKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var arKitSceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
     Method assisted with tutorial: https://www.appcoda.com/arkit-introduction-scenekit
     */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        arKitSceneView.session.run(configuration)
    }
    
    /*
    Method assisted with tutorial: https://www.appcoda.com/arkit-introduction-scenekit
    */
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arKitSceneView.session.pause()
    }

}

