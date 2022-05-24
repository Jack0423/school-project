//
//  bird2.swift
//  school project
//
//  Created by Jack on 2022/3/23.
//

import SwiftUI
import AVFoundation


struct bird2: View {
    var bird_2: String
    var body: some View {
        VStack{
            HStack{
            
        Text ("大白鷺")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            .padding()
            Spacer()
                
                Button {

                    let utterance = AVSpeechUtterance(string: "冬候鳥，體長約90公分，全身羽毛白色，嘴黃色，腳黑色，繁殖期身體有絲狀飾羽。有時會混在中、小白鷺群中，不過因頸長體大，存在感很高。生性機警，常扮演警戒的角色，發現不尋常時會立刻嘎嘎大叫，好讓同伴們能快快飛離。")
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)

                } label: {
                   Image(systemName: "play.circle")
                        
                }
                .scaledToFit()
                .padding()
                .cornerRadius(20)

            }
        Text("冬候鳥，體長約90公分，全身羽毛白色，嘴黃色，腳黑色，繁殖期身體有絲狀飾羽。有時會混在中、小白鷺群中，不過因頸長體大，存在感很高。生性機警，常扮演警戒的角色，發現不尋常時會立刻嘎嘎大叫，好讓同伴們能快快飛離。")
            .font(.system(size: 25, design: .rounded))
            Spacer()
        Image("bird2")
                .resizable()
                .scaledToFit()
            Spacer()
        }
    }
    }


struct bird2_Previews: PreviewProvider {
    static var previews: some View {
        bird2(bird_2: "唐白鷺")
    }
}
