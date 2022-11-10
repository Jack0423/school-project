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
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("水筆仔")
                        
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("紅樹科 常綠小喬木")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
            DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let plantvoice :String =  "水鼻仔:::::::紅樹科::::常綠小喬木::::花::花瓣五枚呈白絲狀::::花萼五片::::呈白色板狀::::常被誤認為花瓣::::聚繖花序::::雄蕊多數::::果實::圓錐形::::花萼宿存::::果實成熟時長出筆胎狀胎生苗::::胎生苗::胚軸表面光滑::::成熟後落入泥中長成幼株::::著陸失敗仍可漂流他處隨機逢生"
                                contextsaying(order: 1, context: plantvoice)
                                voicestatus = 1
                            } label: {
                                Text("播放")
                                Image(systemName: "play.circle")
                            }
                        }else if voicestatus == 1 {
                            Button{
                                contextsaying(order: 2, context: " ")
                                voicestatus = 2
                            } label: {
                                Text("暫停")
                                Image(systemName: "pause.circle")
                            }
                        }else if voicestatus == 2{
                            Button{
                                contextsaying(order: 3, context: " ")
                                voicestatus = 1
                            } label: {
                                Text("繼續")
                                Image(systemName: "play.circle")
                            }
                        }
                        Button{
                            contextsaying(order: 0, context: " ")
                            voicestatus = 0;
                        } label: {
                            Text("  停止")
                            Image(systemName: "stop.circle")
                        }
                    }
            }.font(.system(size: 25, design: .rounded))
               .padding()
           
           //植物介紹
            DisclosureGroup("胎生苗"){
                Text("胚軸表面光滑，成熟後落入泥中長成幼株，著陸失敗仍可漂流他處隨機逢生。")
                Image("水筆仔胎生苗")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
             .padding()

            DisclosureGroup("花"){
                Text("花瓣五枚呈白絲狀，花萼五片，呈白色板狀，常被誤認為花瓣。\n聚繖花序，雄蕊多數。")
                Image("水筆仔花")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
             .padding()

            DisclosureGroup("果"){
                Text("圓錐形，花萼宿存。果實成熟時長出筆胎狀胎生苗。")
                Image("水筆仔果")
                    .resizable()
                    .scaledToFit()
            }.font(.system(size: 25, design: .rounded))
             .padding()

            Image("水筆仔樹")
                .resizable()
                .scaledToFit()
            
            }
        }.foregroundColor(.primary)
    }
}


struct plant7_Previews: PreviewProvider {
    static var previews: some View {
        plant7(plantg:"水筆仔")
    }
}
