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
    
    @IBAction func showMessage(sender: UIButton){
        let emojis = ["🌞": "sun", "🌚": "moon"]
        

        let selectedEmotion = sender.titleLabel?.text
        
        //a message pops up when a user clicks a button
        let alertController = UIAlertController(title: "Hey!", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
        present(alertController, animated: true, completion: nil)
    }
}


