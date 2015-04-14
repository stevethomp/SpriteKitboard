//
//  ViewController.swift
//  SpriteKeyboard
//
//  Created by Steven Thompson on 2015-04-13.
//  Copyright (c) 2015 NSCoder Ottawa. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController, InputDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let skView = SKView(frame: view.frame)
        view.addSubview(skView)
        skView.setTranslatesAutoresizingMaskIntoConstraints(false)
        skView.showsPhysics = false
        skView.showsNodeCount = false
        skView.showsFPS = true
        
        let scene = KeyboardScene()
        scene.size = skView.bounds.size
        scene.scaleMode = .AspectFill
        scene.inputDelegate = self
        skView.presentScene(scene)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func typeLetter(letter: String) {

    }
    
    func delete() {

    }
    
    func nextKeyboard() {

    }
    
    func enter() {

    }

}

