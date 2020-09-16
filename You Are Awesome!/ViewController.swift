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
    
    var imgNum = 0
    var msgNum = 0
    let totalNumImg = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = ""
    }

    @IBAction func showMsg(_ sender: UIButton) {
        
        let msgs = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "When the Genius Bar Needs Help, They Call You!", "You've Got the Design Skills of Jony Ive"]
        msgLabel.text = msgs[Int.random(in: 0...msgs.count-1)]
        imgView.image = UIImage(named: "image\(Int.random(in: 0...totalNumImg))")
//        msgLabel.text = msgs[msgNum]
//        msgNum += 1
//        if msgNum == msgs.count{
//            msgNum = 0
//        }
//
//        let imgName = "image\(imgNum)"
//        imgView.image = UIImage(named: imgName)
//        imgNum += 1
//        if imgNum == 10{
//            imgNum = 0
//        }
        
//        let aweMsg = "You are Awesome!"
//        let greatMsg = "You are Great!"
//        let bombMsg = "You are Da Bomb!"
//
//        if msgLabel.text == aweMsg{
//            msgLabel.text = greatMsg
//            imgView.image = UIImage(named: "image1")
//        }else if msgLabel.text == greatMsg{
//            msgLabel.text = bombMsg
//            imgView.image = UIImage(named: "image2")
//        }else {
//            msgLabel.text = aweMsg
//            imgView.image = UIImage(named: "image0")
//        }
    }
    
}

