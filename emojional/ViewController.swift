//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let customMessages = ["sun" : ["good morning", "go back to sleep", "rise and shine"], "moon" : ["good night", "why are you still awake?", "sleep tight"]]
    
    let emojis = ["🌞" : "sun", "🌚" : "moon"]
    
    @IBAction func showMessage(sender: UIButton){

        let selectedEmotion = sender.titleLabel?.text
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...2)]
        
        //a message pops up when a user clicks a button
        let alertController = UIAlertController(title: "Hey!", message: customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...2)], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
        present(alertController, animated: true, completion: nil)
    }
    
    
    
}


