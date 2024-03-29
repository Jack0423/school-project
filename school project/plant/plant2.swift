//
//  plant2.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation
import UIKit

struct plant2: View {
    var plantb: String
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("黃槿")
                        .foregroundColor(.primary)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("錦葵科 長綠灌木至小喬木\n嫩葉及花序有短柔毛")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }

                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let plantvoice :String = "黃槿:::::::錦葵科:::: 長綠灌木至小喬木::::嫩葉及花序有短柔毛::::葉::心型::::掌狀葉脈::::花::黃色鐘型::::花心暗紫色::::花瓣五枚::::覆瓦狀排列::::果::蒴果::::葉常被用於包粿之襯底::::俗稱::粿葉樹"
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
                    Text("心型，掌狀葉脈。")
                    Image("黃槿葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()
                
                DisclosureGroup("花"){
                    Text("黃色鐘型，花心暗紫色，花瓣五枚，覆瓦狀排列。")
                    Image("黃槿花")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()
                
                DisclosureGroup("果"){
                    Text("蒴果。")
                    Image("黃槿果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .padding()
                
                DisclosureGroup("相關知識"){
                    Text("葉常被用於包粿之襯底，俗稱：粿葉樹。")
                }.font(.system(size: 25, design: .rounded))
                    .padding()
                
                
                Image("黃槿樹")
                    .resizable()
                    .scaledToFit()
                
            }
        } .foregroundColor(.primary)
    }
}


struct plant2_Previews: PreviewProvider {
    static var previews: some View {
        plant2(plantb: "黃槿")
    }
}
