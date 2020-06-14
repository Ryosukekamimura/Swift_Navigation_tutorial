//
//  ContentView.swift
//  NavigationTutorialApp
//
//  Created by 神村亮佑 on 2020/06/13.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    
    @State private var isFullScreen = false
    
    var body: some View {
        NavigationView{
            Button("Toggle Full Screen"){
                self.isFullScreen.toggle()
            }
        .navigationBarTitle("Full Screen")
        .navigationBarHidden(isFullScreen)
        }
            .statusBar(hidden: isFullScreen)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
