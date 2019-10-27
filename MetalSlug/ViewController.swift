//
//  ViewController.swift
//  MetalSlug
//
//  Created by Abel Lazaro on 18/10/19.
//  Copyright © 2019 Abel Lazaro. All rights reserved.
//
//  reproductor de sonidos del juego metal slug
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var track: String? = nil
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heavyButton(_ sender: Any) {
        track = "H"
        print("heavy machine gun \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func rocketButton(_ sender: Any) {
        track = "R"
        print("Rocket launcher \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func flameButton(_ sender: Any) {
        track = "F"
        print("flame shot \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func laserButton(_ sender: Any) {
        track = "L"
        print("laser gun \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func shotButton(_ sender: Any) {
        track = "S"
        print("shot gun \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func enemyButton(_ sender: Any) {
        track = "C"
        print("enemy chacer \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func ironButton(_ sender: Any) {
        track = "I"
        print("iron lizard \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func dropButton(_ sender: Any) {
        track = "D"
        print("drop shot \(track!)")
        reproducirAudio(audio: track!)
    }
    
    @IBAction func granadeButton(_ sender: Any) {
        track = "G"
        print("super granade \(track!)")
        reproducirAudio(audio: track!)
    }
    
    func reproducirAudio(audio: String) {
        let path = Bundle.main.path(forResource: "\(audio).mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            // couldn't load file :(
        }
    }
}
