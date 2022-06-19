//
//  plant9.swift
//  school project
//
//  Created by Jack on 2022/3/25.
//

import SwiftUI
import AVFoundation

struct plant9: View {
    var planti: String
    let synthesizer = AVSpeechSynthesizer() //語音導覽
    @State var voicestatus :Int = 0 //語音導覽狀態
    var body: some View {
        Spacer()
        ScrollView{
            VStack{
                HStack{
                    Text("林投")
                        .foregroundColor(.black)
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Text("露兜樹科 「海邊的綠色長城」")
                        .font(.system(size: 20, design: .rounded))
                        .foregroundColor(.gray)
                }
                DisclosureGroup("語音導覽"){
                    HStack{
                        if voicestatus == 0 {
                            Button{
                                let utterance = AVSpeechUtterance(string: "林投:::::::露兜樹科:::: 「海邊的綠色長城」::::葉::叢生枝端::::葉緣及中肋長滿銳刺::::莖::多分枝::::不定氣根多::::常形成支持根::::果實::形狀像鳳梨::::質輕富纖維::::可藉水力傳播::::屬於海漂型植物")
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
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                //植物介紹
                DisclosureGroup("葉"){
                    Text("叢生枝端，葉緣及中肋長滿銳刺。")
                    Image("林投葉")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("莖"){
                    Text("多分枝，不定氣根多，常形成支持根。")
                    Image("林投莖")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()

                DisclosureGroup("果"){
                    Text("形狀像鳳梨，質輕富纖維，可藉水力傳播，屬於海漂型植物。")
                    Image("林投果")
                        .resizable()
                        .scaledToFit()
                }.font(.system(size: 25, design: .rounded))
                    .foregroundColor(.black).padding()
            
                        
                Image("林投樹")
                    .resizable()
                    .scaledToFit()
                
            }
        }
    }
}


struct plant9_Previews: PreviewProvider {
    static var previews: some View {
        plant9(planti:"林投")
    }
}
