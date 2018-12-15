//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer = AVAudioPlayer()
    let arraySound = ["note1","note2","note3","note4","note5","note6","note7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        
        var soundFile = arraySound[sender.tag-1]
        
        playSound(soundFile)
        
//        switch sender.tag {
//        case 1:
//            playSound("note1")
//        case 2:
//            playSound("note2")
//        case 3:
//            playSound("note3")
//        case 4:
//            playSound("note4")
//        case 5:
//            playSound("note5")
//        case 6:
//            playSound("note6")
//        default:
//            playSound("note7")
//        }
     

    }
    
    func playSound(_ a :String){
        
        let sound1 = Bundle.main.url(forResource: a, withExtension: "wav")
        
        
        do {
            try audioPlayer =  AVAudioPlayer(contentsOf: sound1!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }

}
