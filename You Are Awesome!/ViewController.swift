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
        let aweMsg = "You are Awesome!"
        let greatMsg = "You are Great!"
        let bombMsg = "You are Da Bomb!"
        
        if msgLabel.text == aweMsg{
            msgLabel.text = greatMsg
            imgView.image = UIImage(named: "image1")
        }else if msgLabel.text == greatMsg{
            msgLabel.text = bombMsg
            imgView.image = UIImage(named: "image2")
        }else {
            msgLabel.text = aweMsg
            imgView.image = UIImage(named: "image0")
        }
    }
    
}

