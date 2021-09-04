//
//  AudioViewModel.swift
//  JamitInterview
//
//  Created by Prof K on 9/4/21.
//

import AVFoundation

class AudioViewModel {
    var player: AVPlayer!
    
    func playAudio(from url: String) {
            guard let url = URL.init(string: url)
                else {
                    return
            }
            let playerItem = AVPlayerItem.init(url: url)
            player = AVPlayer.init(playerItem: playerItem)
            player.play()
    }
}
