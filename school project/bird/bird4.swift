//
//  bird4.swift
//  school project
//
//  Created by Jack on 2022/3/23.
//

import SwiftUI
import AVFoundation

struct bird4: View {
    var bird_4:String
    var body: some View {
            VStack{
                HStack{
            Text ("小水鴨")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                .padding()
                Spacer()
                    Button {

                        let utterance = AVSpeechUtterance(string: "冬侯鳥，體長約30公分，翅膀有綠色斑點，雄鳥的臀側有黃斑。受驚嚇時會從水中垂直飛起，在空中盤旋數周確定沒有危險後再降落。別看牠雖然小小一隻，每年可是都千里迢迢從西伯利亞飛到台灣來渡冬的！")
                        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                        let synthesizer = AVSpeechSynthesizer()
                        synthesizer.speak(utterance)

                    } label: {
                        Spacer()
                       Image(systemName: "play.circle")
                            
                    }
                    .scaledToFit()
                    .padding()
                    .cornerRadius(20)
                }
            Text("冬侯鳥，體長約30公分，翅膀有綠色斑點，雄鳥的臀側有黃斑。受驚嚇時會從水中垂直飛起，在空中盤旋數周確定沒有危險後再降落。別看牠雖然小小一隻，每年可是都千里迢迢從西伯利亞飛到台灣來渡冬的！")
                .font(.system(size: 25, design: .rounded))
                Spacer()
            Image("bird4")
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
        }
    }


struct bird4_Previews: PreviewProvider {
    static var previews: some View {
        bird4(bird_4: "小水鴨")
    }
}
