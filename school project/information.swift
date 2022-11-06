//
//  information.swift
//  school project
//
//  Created by RAY on 2022/6/18.
//

import Foundation
import SwiftUI

struct information: View {
    let wordsize = UIScreen.main.bounds.width * 0.045
    var body: some View{
        VStack(alignment: .leading){
            Text("製作人：王凱立、李泫翰")
            Text("如有任何版權問題")
            Text("請使用意見回饋或下方的email告訴我們吧！")
            Text("官方：ckshapp@cksh.hc.edu.tw")
            Text("王凱立：jack940423@gmail.com")
            Text("李泫翰：ray0306.lee@gmail.com")
            Text("\n鳥類圖片詳細來源：")
            Text("https://hackmd.io/@ios-app/BJ7Bqdp-q")
            Text("建功高中校網連結：")
            Text("https://www.cksh.hc.edu.tw/")
        }.font(.system(size: wordsize, design: .rounded))
            .foregroundColor(.black)
            .padding()
    }
}
