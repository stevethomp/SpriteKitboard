//
//  KeyboardViewController.swift
//  SpriteKeyboardExtension
//
//  Created by Steven Thompson on 2015-04-13.
//  Copyright (c) 2015 NSCoder Ottawa. All rights reserved.
//

import UIKit
import SpriteKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let skView = SKView(frame: view.frame)
        view.addSubview(skView)
        skView.setTranslatesAutoresizingMaskIntoConstraints(false)
        skView.showsPhysics = false
        skView.showsNodeCount = false
        skView.showsFPS = false
        
        let scene = KeyboardScene()
        scene.size = skView.bounds.size
        scene.scaleMode = .AspectFill
        scene.weakParent = self
        skView.presentScene(scene)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
    
    }
    
    //MARK: UIInputViewController
    // To type, simply get the UITextDocumentProxy and insertText
    
    func typeLetter(letter: String) {
        var proxy = self.textDocumentProxy as! UITextDocumentProxy
        proxy.insertText(letter)
    }
    
    func delete() {
        var proxy = self.textDocumentProxy as! UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func nextKeyboard() {
        advanceToNextInputMode()
    }
    
    func enter() {
        var proxy = self.textDocumentProxy as! UITextDocumentProxy
        proxy.insertText("\n")
    }
}
