//
//  KeyboardScene.swift
//  SpriteKeyboard
//
//  Created by Steven Thompson on 2015-04-13.
//  Copyright (c) 2015 NSCoder Ottawa. All rights reserved.
//

import UIKit
import SpriteKit

class KeyboardScene: SKScene {
    weak var weakParent: KeyboardViewController?

    let alphabet = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m", " "]

    override func didMoveToView(view: SKView) {
        //Set up your scene
        
    }
    
    override func update(currentTime: NSTimeInterval) {
        //Called once per frame
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
            // Receive touch events, do something with them
        }
    }
}
