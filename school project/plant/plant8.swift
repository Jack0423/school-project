//
//  plant8.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant8: View {
    var planth: String
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("馬鞍藤")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("旋花科 「海濱花后」")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let utterance = AVSpeechUtterance(string: "馬鞍藤:::::::旋花科:::: 「海濱花后」::::葉::革質::::互生::::葉似馬鞍而得名::::莖::匍匐成長::::節節生根::::花::花瓣依逆時針方向旋轉開放::::清晨盛開::::午後及凋零::::雄蕊五枚::::三長兩短::::果實::蒴果四裂")
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
                    Text("革質，互生。葉似馬鞍而得名。")
                    Image("馬鞍藤葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("花"){
                    Text("花瓣依逆時針方向旋轉開放，清晨盛開，午後及凋零。雄蕊五枚，三長兩短。")
                    Image("馬鞍藤花")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("果"){
                    Text("蒴果四裂。")
                    Image("馬鞍藤果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("莖"){
                    Text("匍匐成長，節節生根。")
                    Image("馬鞍藤莖")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                        

                Image("馬鞍藤樹")
                    .resizable()
                    .scaledToFit()
                
            }
        }
    }
}


struct plant8_Previews: PreviewProvider {
    static var previews: some View {
        plant8(planth:"馬鞍藤")
    }
}
