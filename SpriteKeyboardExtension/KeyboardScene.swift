//
//  KeyboardScene.swift
//  SpriteKeyboard
//
//  Created by Steven Thompson on 2015-04-13.
//  Copyright (c) 2015 NSCoder Ottawa. All rights reserved.
//

import UIKit
import SpriteKit

protocol InputDelegate {
    func typeLetter(letter: String)
    func delete()
    func nextKeyboard()
    func enter()
}

class KeyboardScene: SKScene {
    var inputDelegate: InputDelegate?
    let ship = SKSpriteNode(imageNamed:"Spaceship")

    override func didMoveToView(view: SKView) {
        //Set up your scene
        backgroundColor = UIColor.lightGrayColor()
        
        ship.position = CGPoint(x: frame.width/2, y: frame.height/2)
        ship.xScale = 0.2
        ship.yScale = 0.2
        addChild(ship)
    }
    
    override func update(currentTime: NSTimeInterval) {
        //Called once per frame
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
            // Receive touch events, do something with them
            let touchLocation = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(touchLocation)
            
            if touchedNode == ship {
                inputDelegate?.typeLetter("Hello NSCoder!")
            }
        }
    }
}
