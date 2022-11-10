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
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("海檬果")
                        .foregroundColor(.primary)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("夾竹桃科 果實形似芒果，典型的海漂植物")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let plantvoice :String = "海檬果:::::::夾竹桃科:::: 果實形似芒果::::典型的海漂植物::::葉::全緣::::叢生於枝端::::具白色乳汁::::花::白色::::長漏斗型::::先端五裂::::花瓣中心淡紅色::::有毛::::果實::含豐富纖維質::::成熟時紅色::::全株有毒::::誤食會有嘔吐::::呼吸困難::::甚至致命之虞"
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
                DisclosureGroup("葉"){
                    Text("全緣，叢生於枝端，具白色乳汁。")
                    Image("海檬果葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                DisclosureGroup("花"){
                    Text("白色，長漏斗型，先端五裂，花瓣中心淡紅色，有毛。")
                    Image("海檬果花")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                DisclosureGroup("果"){
                    Text("含豐富纖維質，成熟時紅色。")
                    Image("海檬果果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                DisclosureGroup("相關知識"){
                    Text("全株有毒，誤食會有嘔吐、呼吸困難，甚至致命之虞！")
                }.font(.system(size: 25, design: .rounded))
                    .padding()

                        
                Image("海檬果樹")
                    .resizable()
                    .scaledToFit()
                
            }
        }.foregroundColor(.primary)
    }
}

struct plant6_Previews: PreviewProvider {
    static var previews: some View {
        plant6(plantf:"海檬果")
    }
}
