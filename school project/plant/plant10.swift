//
//  plant10.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant10: View {
    var plantj: String
    var body: some View {
        Spacer()
            ScrollView{
            VStack{
                HStack{
                         Text("團扇仙人掌")
                            .foregroundColor(.black)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .padding()
                    Text("仙人掌科 是製作澎湖特產仙人掌冰的材料")
                            .font(.system(size: 20, design: .rounded))
                            .foregroundColor(.gray)

                }
            DisclosureGroup("語音導覽"){
                Button {
                    
                    let utterance = AVSpeechUtterance(string: "團扇仙人掌:::::::仙人掌科::::是製作澎湖特產仙人掌冰的材料::::葉::特化成針刺狀::::莖::綠色肉質扁平::::花::黃色::::具多數雄蕊::::果實::漿果::::成熟時紫色")
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
                Text("特化成針刺狀。")
                Image("團扇仙人掌葉")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("花"){
                Text("黃色，具多數雄蕊。")
                Image("團扇仙人掌花")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("果"){
                Text("漿果，成熟時紫色。")
                Image("團扇仙人掌果")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
            DisclosureGroup("莖"){
                Text("綠色肉質扁平。")
                Image("團扇仙人掌莖")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
                .foregroundColor(.black).padding()
                    
        Image("團扇仙人掌樹")
                .resizable()
                .scaledToFit()
            
        }
    
        
        }

        
        
        
        
        
        
        

    }
}

struct plant10_Previews: PreviewProvider {
    static var previews: some View {
        plant10(plantj:"團扇仙人掌")
    }
}
