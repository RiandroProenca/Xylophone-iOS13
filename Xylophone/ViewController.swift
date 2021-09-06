//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressedC(_ sender: UIButton) {
        
        playSound(som:sender.currentTitle!)
        
    }
    func playSound(som:String) {
        let seconds = 0.4
        DispatchQueue.main.asyncAfter(deadline:.now() + seconds){ [self] in
            let url = Bundle.main.url(forResource: som, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            
            player.play()
        }
        

    }
    
}

