//
//  sound.swift
//  school project
//
//  Created by Jack on 2022/4/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // Synth object
    let synth = AVSpeechSynthesizer()
    // Utterance object
    var theUtterance = AVSpeechUtterance(string: "")

    // Text element that the synth will read from.
    @IBOutlet weak var textView: UITextView!

    // Function that starts reading, pauses reading, and resumes
    // reading when the UIButton is pressed.
    @IBAction func textToSpeech(_ sender: UIButton) {
        // The resume functionality
        if (synth.isPaused) {
            synth.continueSpeaking();
        }
        // The pause functionality
        else if (synth.isSpeaking) {
            synth.pauseSpeaking(at: AVSpeechBoundary.immediate)
        }
        // The start functionality
        else if (!synth.isSpeaking) {
            // Getting text to read from the UITextView (textView).
            theUtterance = AVSpeechUtterance(string: textView.text)
            theUtterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
            theUtterance.rate = 0.5
            synth.speak(theUtterance)
        }
    }

    // Standard function
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Standard function
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
