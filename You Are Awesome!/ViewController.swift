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
    
    var imgNum = -1
    var msgNum = -1
    let totalNumImg = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = ""
    }

    @IBAction func showMsg(_ sender: UIButton) {
        
        let msgs = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "When the Genius Bar Needs Help, They Call You!", "You've Got the Design Skills of Jony Ive"]
        
        var newMsgNum: Int
        repeat{
            newMsgNum = Int.random(in: 0...msgs.count-1)
        }
            while msgNum == newMsgNum
            msgNum = newMsgNum
            msgLabel.text = msgs[msgNum]
        
        var newImgNum: Int
        repeat{
            newImgNum = Int.random(in: 0...totalNumImg)
        }
            while imgNum == newImgNum
            imgNum = newImgNum
            imgView.image = UIImage(named: "image\(imgNum)")
    }

}
