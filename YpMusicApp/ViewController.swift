//
//  ViewController.swift
//  YpMusicApp
//
//  Created by 山岸善将 on 2021/06/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let cymbalMusic = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
      soundPlayer(player: &cymbalPlayer, path: cymbalMusic, count: 0)
    }
    
    let guitarMusic = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
       soundPlayer(player: &guitarPlayer, path: guitarMusic, count: 0)
    }
    
    let backMusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
   
    var backMusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
       soundPlayer(player: &backMusicPlayer, path: backMusicPath, count: -1)
    }
    
    @IBAction func stop(_ sender: Any) {
        backMusicPlayer.stop()
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = -1
            player.play()
        }catch {
            print("エラー発生")
        }
    }
}

