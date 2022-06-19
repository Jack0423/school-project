//
//  plant4.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant4: View {
    var plantd: String
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("銀合歡")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("豆科")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let utterance = AVSpeechUtterance(string: "銀合歡:::::::豆科::::葉::二回偶數羽狀複葉::::花::頭狀花序::::腋生::::具長柄::::花白色::::每一朵小花都含雌雄蕊::::授粉成功即形成豆莢::::外來植物::::引進作為炭薪及造紙使用")
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
                    .foregroundColor(.black).padding()
                
                //植物介紹
                DisclosureGroup("葉"){
                    Text("二回偶數羽狀複葉。")
                    Image("銀合歡葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("花"){
                    Text("頭狀花序，腋生，具長柄，花白色。每一朵小花都含雌雄蕊，授粉成功即形成豆莢。")
                    Image("銀合歡花")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("果"){
                    Text("")
                    Image("銀合歡果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("相關知識"){
                    Text("外來植物，引進作為炭薪及造紙使用。")
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                        

                Image("銀合歡樹")
                    .resizable()
                    .scaledToFit()
            
            }
        }
    }
}


struct plant4_Previews: PreviewProvider {
    static var previews: some View {
        plant4(plantd:"銀合歡")
    }
}
