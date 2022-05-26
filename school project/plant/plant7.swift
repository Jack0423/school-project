//
//  plant7.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant7: View {
    var plantg: String
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("水筆仔")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("紅樹科 常綠小喬木")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
            DisclosureGroup("語音導覽"){
                Button {
                    let utterance = AVSpeechUtterance(string: "水鼻仔:::::::紅樹科::::常綠小喬木::::花::花瓣五枚呈白絲狀::::花萼五片::::呈白色板狀::::常被誤認為花瓣::::聚繖花序::::雄蕊多數::::果實::圓錐形::::花萼宿存::::果實成熟時長出筆胎狀胎生苗::::胎生苗::胚軸表面光滑::::成熟後落入泥中長成幼株::::著陸失敗仍可漂流他處隨機逢生")
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
           
           //植物介紹
            DisclosureGroup("胎生苗"){
                Text("胚軸表面光滑，成熟後落入泥中長成幼株，著陸失敗仍可漂流他處隨機逢生。")
                Image("水筆仔胎生苗")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()

            DisclosureGroup("花"){
                Text("花瓣五枚呈白絲狀，花萼五片，呈白色板狀，常被誤認為花瓣。\n聚繖花序，雄蕊多數。")
                Image("水筆仔花")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()

            DisclosureGroup("果"){
                Text("圓錐形，花萼宿存。果實成熟時長出筆胎狀胎生苗。")
                Image("水筆仔果")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

            DisclosureGroup("相關知識"){
                Text("夏天提供樹蔭，冬天不遮陽光。")
                Text("絕佳行道樹種，核果為白頭翁的最愛。")
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()

                    
            Image("水筆仔樹")
                .resizable()
                .scaledToFit()
            
            }
        }
    }
}


struct plant7_Previews: PreviewProvider {
    static var previews: some View {
        plant7(plantg:"水筆仔")
    }
}
