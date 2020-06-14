//
//  ContentView.swift
//  NavigationTutorialApp
//
//  Created by 神村亮佑 on 2020/06/13.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

class User: ObservableObject{
    //Userクラスにあるscore
    @Published var score = 0
}


struct ChangeView: View {
    @EnvironmentObject var user: User
    
    var body: some View{
        VStack{
            Text("Score: \(user.score)")
            Button("Increce"){
                self.user.score += 1
            }
        }
    }
}

struct ContentView: View {
    @ObservedObject var user = User()
    
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Text("Score : \(user.score)")
                NavigationLink(destination: ChangeView()){
                    Text("Show details")
                }

                

            }.navigationBarTitle("NavigationBarTitle")
        }
    .environmentObject(user)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
