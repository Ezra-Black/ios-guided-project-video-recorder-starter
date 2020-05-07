//
//  RecordingCollectionViewCell.swift
//  VideoRecorder
//
//  Created by Ezra Black on 5/7/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit
import AVFoundation

class RecordingCollectionViewCell: UICollectionViewCell {

    // MARK: - Outlets

    @IBOutlet weak var playerView: VideoPlayerView!

    // MARK: - Properties

    var recording: Recording?
    var player: AVPlayer!

    // MARK: - IBActions

    @IBAction func pressPlayTapped(_ sender: Any) {
        guard let recording = recording else { return }
        playMovie(url: recording.url)
    }

    // MARK: - Actions

    private func playMovie(url: URL) {
        player = AVPlayer(url: url)
        playerView.player = player
        playerView.backgroundColor = .systemOrange
        player.play()
    }
}
