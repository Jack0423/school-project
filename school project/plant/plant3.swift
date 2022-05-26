//
//  plant3.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant3: View {
    var plantc: String
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("木麻黃")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("木麻黃科 常綠大喬木")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    Button {
                        let utterance = AVSpeechUtterance(string: "木麻黃:::::::木麻黃科::::常綠大喬木::::小莖::綠色長條狀::::葉::很小::::鞘狀齒列::::輪生於小莖的節上::::根::有根瘤::::果實::毬果狀之聚合果::::常被誤認為是裸子植物::::少數具固氮作用的非豆科植物")
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
                DisclosureGroup("葉"){
                    Text("很小，鞘狀齒列，輪生於小莖的節上。")
                    Image("木麻黃葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                DisclosureGroup("根"){
                    Text("有根瘤。")
                    Image("木麻黃根")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                DisclosureGroup("小莖"){
                    Text("綠色長條狀。")
                    Image("木麻黃小莖")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("果"){
                    Text("毬果狀之聚合果。")
                    Image("木麻黃果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("相關知識"){
                    Text("常被誤認為是裸子植物。")
                    Text("少數具固氮作用的非豆科植物。")
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
                
                
                Image("木麻黃樹")
                    .resizable()
                    .scaledToFit()
                
            }
        }
    }
}

struct plant3_Previews: PreviewProvider {
    static var previews: some View {
        plant3(plantc: "木麻黃")
    }
}
