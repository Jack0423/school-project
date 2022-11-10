//
//  contextsaying.swift
//  school project
//
//  Created by Ray on 2022/11/10.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation

func contextsaying (order: Int,context: String) {
    if order == 1 {
        utterance = AVSpeechUtterance(string: context)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = 0.4
        synthesizer.speak(utterance)
    }else if order == 2 {
        synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
    }else if order == 3 {
        synthesizer.continueSpeaking()
    }else if order == 0 {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    
}
