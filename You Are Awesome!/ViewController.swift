//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Alex Heller on 9/2/20.
//  Copyright © 2020 Alex Heller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad has run!")
        msgLabel.text = "Fabulous? That's you!"
    }

    @IBAction func showMsg(_ sender: UIButton) {
        print("The Message Label was Pressed!")
        msgLabel.text = "You are Awesome!"
    }
    
}

