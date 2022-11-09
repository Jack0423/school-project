//
//  bird2.swift
//  bird template
//
//  Created by RAY on 2022/5/21.
//

import SwiftUI
import UIKit
import AVFoundation



struct birdmod: View { //struct寫bird加一個數字
    let birdnumber :String //鳥的號碼
    let birdname :String //鳥類名稱
    let birdname_ :String //鳥類別名
    let birdscientific :String //鳥類學名
    let birdinfo :String //鳥類資料
    let birdimg :String //圖片數量
    let birdlink1 :String //連結1
    let birdlink2 :String //連結2
    //let synthesizer = AVSpeechSynthesizer() //語音導覽
    //@State var voicestatus :Int = 0 //語音導覽狀態
    let player = AVPlayer() //鳥叫聲
    
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text(birdname)
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    
                    if birdname_ != "0"{
                        Text(birdname_)
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.black)
                    }
                }
                
                Text(birdscientific)
                    .foregroundColor(.black)
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.bold)
                    .padding()
                
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                var birdvoice = birdinfo.replacingOccurrences(of: "\n",with: " ")
                                birdvoice = birdvoice.replacingOccurrences(of: "•",with: " ")
                                let utterance = AVSpeechUtterance(string: birdvoice)
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
                }
                
                
                DisclosureGroup("鳥叫聲"){
                    let fileUrl = Bundle.main.url(forResource: birdnumber, withExtension: ".mp3")!
                    let playerItem = AVPlayerItem(url: fileUrl)
                    Button{
                        self.player.replaceCurrentItem(with: playerItem)
                        self.player.seek(to: CMTime(seconds: 0, preferredTimescale: 1))
                        self.player.volume = 5
                        self.player.play()
                    } label: {
                        Text("播放")
                        Image(systemName: "play.circle")
                    }
                }
                
               
                DisclosureGroup("相關知識"){
                    VStack(alignment: .leading) {
                        Text(birdinfo).padding(.bottom)
                    }.padding()
                }
                
                
                DisclosureGroup("圖片"){
                    let birdimgnum = (birdimg as NSString).integerValue
                    ForEach (1..<birdimgnum+1) { i in
                        Image(birdnumber + "-" + "\(i)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width-25)
                        Spacer(minLength: 25)
                    }
                    
                }
                
                
                DisclosureGroup("資料來源"){
                    VStack(alignment: .leading) {
                        Text("1. 圖文資料來源")
                        Link(birdlink1, destination: URL(string: birdlink1)!)
                            .foregroundColor(.blue)
                        Spacer(minLength: 25)
                        Text("2. 音檔來源")
                        Link(birdlink2
                             , destination: URL(string: birdlink2)!)
                            .foregroundColor(.blue)
                    }.padding()
                }
                
                
            }.font(.system(size: 25, design: .rounded))
                .padding()
                .foregroundColor(.primary)
        }
    }
}

