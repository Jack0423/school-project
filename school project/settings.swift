//
//  settings.swift
//  school project
//
//  Created by Jack on 2022/4/20.
//

import SwiftUI

struct settings: View {
    @State var navigateTo: AnyView?
    @State var isNavigationActive = false
    var body: some View {
        Spacer()
        Menu {
                               Button {
                                   navigateTo = AnyView(bird())
                                   isNavigationActive = true
                               } label: {
                                   Label("Create an Item", systemImage: "doc")
                               }
                               
                               Button {
                                   navigateTo = AnyView(bird())
                                   isNavigationActive = true
                               } label: {
                                   Label("Create a category", systemImage: "folder")
                               }
                           } label: {
                               Label("Add", systemImage: "plus")
                           }
      
    }
}

struct settings_Previews: PreviewProvider {
    static var previews: some View {
        settings()
    }
}
