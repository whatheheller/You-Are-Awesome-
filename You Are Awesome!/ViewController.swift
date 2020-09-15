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
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = ""
    }

    @IBAction func showMsg(_ sender: UIButton) {
        msgLabel.text = "You are Awesome!"
        imgView.image = UIImage(named: "image0")
    }
    
}

