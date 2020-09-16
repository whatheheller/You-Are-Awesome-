//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Alex Heller on 9/2/20.
//  Copyright © 2020 Alex Heller. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var imgNum = -1
    var msgNum = -1
    var soundNum = -1
    let totalNumImg = 9
    let totalNumSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = ""
    }

    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
                   do{
                       try audioPlayer = AVAudioPlayer(data: sound.data)
                       audioPlayer.play()
                   } catch {
                       print("ERROR: \(error.localizedDescription) Could not initalize AVAuddioPlayer object 🤬")
                   }
               } else {
                   print("ERROR: Could not read data from file sound 🤬")
               }
    }
    
    func nonRepeatRandom(originalNum: Int, upperLimit: Int) -> Int {
        var newNum: Int
        repeat {
            newNum = Int.random(in: 0...upperLimit)
        } while originalNum == newNum
            return newNum
    }
    
    @IBAction func showMsg(_ sender: UIButton) {
        
        let msgs = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "When the Genius Bar Needs Help, They Call You!", "You've Got the Design Skills of Jony Ive"]
        
        msgNum = nonRepeatRandom(originalNum: msgNum, upperLimit: msgs.count-1)
        msgLabel.text = msgs[msgNum]
        
        imgNum = nonRepeatRandom(originalNum: imgNum, upperLimit: totalNumImg-1)
        imgView.image = UIImage(named: "image\(imgNum)")
        
        soundNum = nonRepeatRandom(originalNum: soundNum, upperLimit: totalNumSounds-1)
        playSound(name: "sound\(soundNum)")
        
       
    }

}
