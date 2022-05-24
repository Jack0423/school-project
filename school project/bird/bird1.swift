//
//  planttest.swift
//  bird template
//
//  Created by Jack on 2022/5/14.
//

import SwiftUI
import AVFoundation
//下面的struct寫bird加一個數字
struct bird1: View {
    //下面的var     :String之間寫bird加一個英文字母 按照順序 1對到a 2對到b
    var bird_1:String
    let player = AVPlayer()
    var body: some View {
        Spacer()
            ScrollView{
            VStack{
                HStack{
                    //鳥類名稱要改
                         Text("蒼鷺")
                            .foregroundColor(.black)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .padding()
                    //下面的這串可以寫鳥的特性，沒有就刪掉
                        Text("（灰鷺）")
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.gray)
                    //上下備註之間可刪

                }
            
            DisclosureGroup("語音導覽"){
                let synthesizer = AVSpeechSynthesizer()
                Button{
                    //文字敘述要改
                    let utterance = AVSpeechUtterance(string: "頭頂白色，頭側、後頭和冠羽黑色。喉、頸灰白色，前頸有2至3列黑色縱斑，下頸前部有總狀白色飾羽，肩羽總狀。體背蒼灰白色，初級和次級飛羽灰黑色，翼上覆羽淺灰白色。胸、腹和尾下覆羽白色，胸側和腹側有黑斑。虹膜：黃色。嘴：橘黃。跗蹠：黃褐色。腳：灰褐色。成鳥：頭後飾羽及過眼線黑色。性孤僻，主食魚類，兩棲類和各種小動物。低沉粗啞喉音")
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    utterance.rate = 0.4
                    synthesizer.speak(utterance)
                } label: {
                    Text("播放")
                    Image(systemName: "play.circle")
                }
                Button{
                    //文字敘述要改
                    synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
                } label: {
                    Text("停止")
                    Image(systemName: "stop.circle")
                }
                
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                .multilineTextAlignment(.leading)
     
            DisclosureGroup("鳥叫聲"){
                Button("播放") {
                    //改成你的音檔檔名和副檔名
                               let fileUrl = Bundle.main.url(forResource: "檔名", withExtension: ".mp3")!
                               let playerItem = AVPlayerItem(url: fileUrl)
                               self.player.replaceCurrentItem(with: playerItem)
                               self.player.play()
                       }
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                .multilineTextAlignment(.leading)
               
            DisclosureGroup("相關知識"){
                //下方為文字敘述 跟上面可以放同樣的敘述
                Text("•頭頂白色，頭側、後頭和冠羽黑色\n•喉、頸灰白色，前頸有2至3列黑色縱斑，下頸前部有總狀白色飾羽，肩羽總狀\n•體背蒼灰白色，初級和次級飛羽灰黑色，翼上覆羽淺灰白色\n•胸、腹和尾下覆羽白色，胸側和腹側有黑斑\n•虹膜：黃色\n•嘴：橘黃\n•跗蹠：黃褐色\n•腳：灰褐色\n•成鳥：頭後飾羽及過眼線黑色\n•性孤僻，主食魚類，兩棲類和各種小動物")
               
                
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                .multilineTextAlignment(.leading)
            
            
            DisclosureGroup("圖片"){
                //鳥圖檔名
                Image("檔名")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                .multilineTextAlignment(.leading)
            
            DisclosureGroup("資料來源"){
                Text("1. 圖文資料來源")
                Link("https://taieol.tw/pages/74153", destination: URL(string: "https://taieol.tw/pages/74153")!)
                Text("2. 音檔來源")
                Link("https://xeno-canto.org/723780", destination: URL(string: "https://xeno-canto.org/723780")!)
            
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                .multilineTextAlignment(.leading)
        }
    
        
        }

    }
}
struct bird1_Previews: PreviewProvider {
    static var previews: some View {
        //這邊一樣bird加數字 bird加英文字母 與上面相同
        bird1(bird_1: "蒼鷺（灰鷺）")
    }
}
