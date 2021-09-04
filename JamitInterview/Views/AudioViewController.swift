//
//  AudioViewController.swift
//  JamitInterview
//
//  Created by Prof K on 9/3/21.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController, AVAudioPlayerDelegate {

    let urlString = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3"
    let viewModel = AudioViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playAudio(_ sender: Any) {
        viewModel.playAudio(from: urlString)
    }
    
    @IBAction func logoutBtnTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
