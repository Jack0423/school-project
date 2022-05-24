//
//  plant6.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant6: View {
    var plantf: String
    var body: some View {
        Spacer()
            ScrollView{
            VStack{
                HStack{
                         Text("海檬果")
                            .foregroundColor(.black)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .padding()
                    Text("夾竹桃科 果實形似芒果，典型的海漂植物")
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.gray)

                }
            DisclosureGroup("語音導覽"){
                Button {
                    
                    let utterance = AVSpeechUtterance(string: "海檬果:::::::夾竹桃科:::: 果實形似芒果::::典型的海漂植物::::葉::全緣::::叢生於枝端::::具白色乳汁::::花::白色::::長漏斗型::::先端五裂::::花瓣中心淡紅色::::有毛::::果實::含豐富纖維質::::成熟時紅色::::全株有毒::::誤食會有嘔吐::::呼吸困難::::甚至致命之虞")
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
                Text("全緣，叢生於枝端，具白色乳汁。")
                Image("海檬果葉")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("花"){
                Text("白色，長漏斗型，先端五裂，花瓣中心淡紅色，有毛。")
                Image("海檬果花")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("果"){
                Text("含豐富纖維質，成熟時紅色。")
                Image("海檬果果")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("相關知識"){
                Text("全株有毒，誤食會有嘔吐、呼吸困難，甚至致命之虞！")
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                    
        Image("海檬果樹")
                .resizable()
                .scaledToFit()
            
        }
    
        
        }

        
        
        
        
        
    }
}

struct plant6_Previews: PreviewProvider {
    static var previews: some View {
        plant6(plantf:"海檬果")
    }
}
