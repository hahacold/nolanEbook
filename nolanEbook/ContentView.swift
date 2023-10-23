//
//  ContentView.swift
//  nolanEbook
//
//  Created by test on 2023/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            TabView{
                //test
                directorView()
                    .tabItem {
                        Label("諾蘭導演", systemImage: "person")
                    }
                movieView()
                    .tabItem {
                        Label("電影", systemImage: "movieclapper")
                    }
                BTSView()
                    .tabItem {
                        Label("幕後花絮", systemImage: "camera")
                    }
                actorView()
                    .tabItem {
                        Label("演員列表", systemImage: "person.crop.rectangle")
                    }

            }
        }
        

    }
}

#Preview {
    ContentView()
}
