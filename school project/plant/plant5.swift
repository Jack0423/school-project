//
//  plant5.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant5: View {
    var plante: String
    var body: some View {
        Spacer()
            ScrollView{
            VStack{
                HStack{
                         Text("台灣海桐")
                            .foregroundColor(.black)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .padding()
                    Text("海桐科 常綠灌木至小喬木 樹皮綠白，有明顯氣孔")
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.gray)

                }
            DisclosureGroup("語音導覽"){
                Button {
                    
                    let utterance = AVSpeechUtterance(string: "台灣海桐:::::::海桐科 ::::常綠灌木至小喬木::::樹皮綠白::::有明顯氣孔::::花::白色::::圓錐花絮頂生::::香味濃郁::::果實::成熟時::::橙黃色::::蒴果兩裂::::種子5～6粒::::紅色")
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    utterance.rate = 0.4
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(utterance)

                } label: {
                    Text("播放")
                   Image(systemName: "play.circle")
                        
                }
                
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
           
            DisclosureGroup("葉"){
                Text("")
                Image("台灣海桐葉")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("花"){
                Text("白色，圓錐花絮頂生，香味濃郁。")
                Image("台灣海桐花")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("果"){
                Text("成熟時，橙黃色，蒴果兩裂，種子5～6粒，紅色。")
                Image("台灣海桐果")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("相關知識"){
                Text("")
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                    
        Image("台灣海桐樹")
                .resizable()
                .scaledToFit()
            
        }
    
        
        }

    }
}

struct plant5_Previews: PreviewProvider {
    static var previews: some View {
        plant5(plante:"台灣海桐")
    }
}
