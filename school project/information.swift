//
//  information.swift
//  school project
//
//  Created by RAY on 2022/6/18.
//

import Foundation
import SwiftUI

struct information: View {
    var body: some View{
        Text("製作人：王凱立、李泫翰\n")
            .fontWeight(.medium)
            .font(.body)
        Text("鳥類圖片詳細來源：\nhttps://hackmd.io/@ios-app/BJ7Bqdp-q")
            .fontWeight(.medium)
            .font(.body)
        Text("如有任何版權問題\n請使用意見回饋或下方的email告訴我們\n王凱立：jack940423@gmail.com\n李泫翰：ray0306.lee@gmail.com")
            .fontWeight(.medium)
            .font(.body)
    }
}
