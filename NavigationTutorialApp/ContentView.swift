//
//  ContentView.swift
//  NavigationTutorialApp
//
//  Created by 神村亮佑 on 2020/06/13.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    
    @State private var score = 0
    
    var body: some View {
        NavigationView{
            Text("\(score)")
                .navigationBarTitle("NavigationBarTitle")
                .navigationBarItems(
                    trailing:
                        HStack{
                            Button("Add 1"){
                                self.score += 1
                            }
                            Button("Substract 1"){
                                self.score -= 1
                            }
            
        })
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
