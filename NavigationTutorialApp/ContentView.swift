//
//  ContentView.swift
//  NavigationTutorialApp
//
//  Created by 神村亮佑 on 2020/06/13.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct Result: View{
    var choice: String
    
    var body: some View{
        Text("You chose \(choice)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Text("Heads or Tiles")
                
                NavigationLink(destination: Result(choice: "Heads")){
                    Text("Heads")
                }
                NavigationLink(destination: Result(choice: "Tiles")){
                    Text("Tiles")
                }
            }
                .navigationBarTitle("NavigationBarTitle", displayMode: .large)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
