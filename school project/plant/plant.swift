//
//  plant.swift
//  school project
//
//  Created by Jack on 2022/3/22.
//

import SwiftUI

struct plant: View {
    let planta=["苦楝"]
    let plantb=["黃槿"]
    let plantc=["木麻黃"]
    let plantd=["銀合歡"]
    let plante=["台灣海桐"]
    let plantf=["海檬果"]
    let plantg=["水筆仔"]
    let planth=["馬鞍藤"]
    let planti=["林投"]
    let plantj=["團扇仙人掌"]
    let plantx=["test"]
    
    var body: some View {
        List {
            NavigationLink ("苦楝", destination: plant1(planta: "苦楝"))
            NavigationLink ("黃槿", destination: plant2(plantb: "黃槿"))
            NavigationLink ("木麻黃", destination: plant3(plantc: "木麻黃"))
            NavigationLink ("銀合歡", destination: plant4(plantd:"銀合歡"))
            NavigationLink ("台灣海桐", destination: plant5(plante:"台灣海桐"))
            Group{
                NavigationLink ("海檬果", destination: plant6(plantf:"海檬果"))
                NavigationLink ("水筆仔", destination: plant7(plantg:"水筆仔"))
                NavigationLink ("馬鞍藤", destination: plant8(planth:"馬鞍藤"))
                NavigationLink ("林投", destination: plant9(planti:"林投"))
                NavigationLink ("團扇仙人掌", destination: plant10(plantj:"團扇仙人掌"))
            }
        }   .background(Color(UIColor.secondarySystemBackground))
            .navigationTitle("植物")
            .toolbar {
                ToolbarItem {
                    Button{
                        contextsaying(order: 0, context: " ")
                    } label: {
                        Text("停止播放")
                        Image(systemName: "stop.circle")
                    }
                }
            }.foregroundColor(.primary)
    }
}


struct plant_Previews: PreviewProvider {
    static var previews: some View {
        plant()
    }
}
