//
//  BirdView.swift
//  school project
//
//  Created by Jack on 2022/3/22.
//

import SwiftUI

struct BirdView: View {
    var bird: String
    var body: some View {
       Text("Hello \(bird)")
    }
}

struct BirdView_Previews: PreviewProvider {
    static var previews: some View {
        BirdView(bird: "小白鷺")
    }
}
