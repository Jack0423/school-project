//
//  plant1.swift
//  school project
//
//  Created by Jack on 2022/3/22.
//

import SwiftUI
import AVFoundation

struct plant1: View {
    var planta:String
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("苦楝")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("楝科 落葉喬木")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }


                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let utterance = AVSpeechUtterance(string: "苦楝:::::::楝科::::落葉喬木:::: 葉::二至三回羽狀複葉::::花::淡紫色圓錐花序::::果::核果成熟時呈金黃色:::: 夏天提供樹蔭，冬天不遮陽光::::絕佳行道樹種::::核果為白頭翁的最愛")
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
                }   .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                //植物介紹
                DisclosureGroup("葉"){
                    Text("二至三回羽狀複葉。")
                    Image("苦楝葉")
                        .resizable()
                        .scaledToFit()
                }   .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                DisclosureGroup("花"){
                    Text("淡紫色圓錐花序。")
                    Image("苦楝花")
                        .resizable()
                        .scaledToFit()
                }   .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                DisclosureGroup("果"){
                    Text("核果成熟時呈金黃色。")
                    Image("苦楝果")
                        .resizable()
                        .scaledToFit()
                }   .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                DisclosureGroup("相關知識"){
                    Text("夏天提供樹蔭，冬天不遮陽光。")
                    Text("絕佳行道樹種，核果為白頭翁的最愛。")
                }   .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                //植物圖
                Image("苦楝樹")
                    .resizable()
                    .scaledToFit()
            
            }
        }
    }
}


struct plant1_Previews: PreviewProvider {
    static var previews: some View {
        plant1(planta: "苦楝")
    }
}
