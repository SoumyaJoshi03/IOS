//
//  ViewController.swift
//  music
//
//  Created by Apple on 13/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    @IBAction func replay(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let audiopath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
        }
        catch{
            
        }
        // Do any additional setup after loading the view.
    }


}

