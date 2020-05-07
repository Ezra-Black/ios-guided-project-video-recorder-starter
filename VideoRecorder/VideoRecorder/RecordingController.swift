//
//  RecordingController.swift
//  VideoRecorder
//
//  Created by Ezra Black on 5/7/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation
class RecordingController {

    var recordings: [Recording] = []

    func createRecording(url: URL) {
        let recording = Recording(url: url)
        recordings.append(recording)
    }
}
