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
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("台灣海桐")
                        .foregroundColor(.primary)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("海桐科 常綠灌木至小喬木 樹皮綠白，有明顯氣孔")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let utterance = AVSpeechUtterance(string: "台灣海桐:::::::海桐科 ::::常綠灌木至小喬木::::樹皮綠白::::有明顯氣孔::::花::白色::::圓錐花絮頂生::::香味濃郁::::果實::成熟時::::橙黃色::::蒴果兩裂::::種子5～6粒::::紅色")
                                utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                                utterance.rate = 0.4
                                synthesizer.speak(utterance)
                                voicestatus = 1
                            } label: {
                                Text("播放")
                                Image(systemName: "play.circle")
                            }
                        }else if voicestatus == 1 {
                            Button{
                                synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
                                voicestatus = 2
                            } label: {
                                Text("暫停")
                                Image(systemName: "pause.circle")
                            }
                        }else if voicestatus == 2{
                            Button{
                                synthesizer.continueSpeaking()
                                voicestatus = 1
                            } label: {
                                Text("繼續")
                                Image(systemName: "play.circle")
                            }
                        }
                        Button{
                            synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
                            voicestatus = 0;
                        } label: {
                            Text("  停止")
                            Image(systemName: "stop.circle")
                        }
                    }
                }.font(.system(size: 25, design: .rounded))
                   .padding()
            
                //植物介紹
                DisclosureGroup("葉"){
                    Text("")
                    Image("台灣海桐葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                DisclosureGroup("花"){
                    Text("白色，圓錐花絮頂生，香味濃郁。")
                    Image("台灣海桐花")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                DisclosureGroup("果"){
                    Text("成熟時，橙黃色，蒴果兩裂，種子5～6粒，紅色。")
                    Image("台灣海桐果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                Image("台灣海桐樹")
                    .resizable()
                    .scaledToFit()
            
            }
        }.foregroundColor(.primary)
    }
}


struct plant5_Previews: PreviewProvider {
    static var previews: some View {
        plant5(plante:"台灣海桐")
    }
}
