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
        addBox() // Create a small box
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
    
    /*
    Method assisted with tutorial: https://www.appcoda.com/arkit-introduction-scenekit
    */
    func addBox() {
        let box = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        
        let boxNode = SCNNode()
        boxNode.geometry = box
        boxNode.position = SCNVector3(0, 0, -0.1)
        
        let scene = SCNScene()
        scene.rootNode.addChildNode(boxNode)
        arKitSceneView.scene = scene
    }

}

