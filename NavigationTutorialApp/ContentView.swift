//
//  ContentView.swift
//  NavigationTutorialApp
//
//  Created by 神村亮佑 on 2020/06/13.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    
    var body: some View {
        NavigationView{
            
            Text("Hello World!")
                .navigationBarTitle("Primary")
            Text("Secondary")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
