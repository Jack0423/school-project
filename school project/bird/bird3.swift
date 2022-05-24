//
//  bird3.swift
//  school project
//
//  Created by Jack on 2022/3/23.
//

import SwiftUI
import AVFoundation

struct bird3: View {
    var bird_3: String
    var body: some View {
                VStack{
                    HStack{
                Text ("高蹺鴴")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                    .padding()
                    Spacer()
                        
                        Button {

                            let utterance = AVSpeechUtterance(string: "冬候鳥，體長約35公分，全身的羽毛顏色呈黑白對比，搭配粉紅色的修長雙腳，透過藍天水影的襯托，一身黑衣白裙更顯修長、優雅。在濕地淺水區常常可以看到牠蓮步輕移，左搖右擺的身影，曼妙的姿態可以和芭蕾舞的首席舞者相媲美。")
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
                Text("冬候鳥，體長約35公分，全身的羽毛顏色呈黑白對比，搭配粉紅色的修長雙腳，透過藍天水影的襯托，一身黑衣白裙更顯修長、優雅。在濕地淺水區常常可以看到牠蓮步輕移，左搖右擺的身影，曼妙的姿態可以和芭蕾舞的首席舞者相媲美。")
                    .font(.system(size: 25, design: .rounded))
                    Spacer()
                Image("bird3")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
            }
    }


struct bird3_Previews: PreviewProvider {
    static var previews: some View {
        bird3(bird_3: "黑面琵鷺")
    }
}
