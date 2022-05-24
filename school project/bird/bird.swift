//
//  bird.swift
//  school project
//
//  Created by Jack on 2022/3/22.
//

import SwiftUI

struct bird: View {
    let birds=["a","b","c"]
    let bird_1=["蒼鷺"]
    let bird_2=["唐白鷺"]
    let bird_3=["黑面琵鷺"]
    let bird_4=["大白鷺"]
    let bird_5=["小白鷺"]
    let bird_6=["反嘴鴴"]
    let bird_7=["高蹺鴴"]
    let bird_8=["東方環頸鴴"]
    let bird_9=["小環頸鴴"]
    let bird_10=["紅冠水雞"]
    let bird_11=["白冠雞"]
    let bird_12=["黑翅鳶"]
    let bird_13=["小水鴨"]
    let bird_14=["花嘴鴨"]
    let bird_15=["大杓鷸"]
    let bird_16=["赤足鷸"]
    let bird_17=["黃足鷸"]
    let bird_18=["長趾濱鷸"]
    let bird_19=["小鸊鷉"]
    var body: some View {
        List {
            NavigationLink ("蒼鷺", destination: bird1(bird_1:"蒼鷺"))
            NavigationLink ("唐白鷺", destination: bird2(bird_2: "唐白鷺"))
            NavigationLink ("黑面琵鷺", destination: bird3(bird_3: "黑面琵鷺"))
            NavigationLink ("大白鷺", destination: bird4(bird_4:"大白鷺"))
           
                    
            }.background(Color(UIColor.secondarySystemBackground))
            .navigationTitle("植物")
                        }
                    }

struct bird_Previews: PreviewProvider {
    static var previews: some View {
        bird()
    }
}
