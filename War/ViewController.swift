//
//  ViewController.swift
//  War
//
//  Created by Mostafa on 7/13/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num = 0
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    var words = ["hello In IOS","I'm Very Busy","Welcome in IOS","I'm Not Happy","I'm Happy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.setTitle("PLAY Loaded", for: UIControlState.normal)
        
        let num1 = Int.init(arc4random_uniform(5))
        label.text = String(format: "Button Clicked %i times" , num )
        label2.text = words[num1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn1_Clicked(sender: UIButton) {
        let num1 = Int(arc4random_uniform(5))
        btn1.setTitle("PlAY", for: UIControlState.normal)
        num += 1
        label.text = String(format: "Button Clicked %i times" , num )
        label2.text = words[num1]
    }

}

