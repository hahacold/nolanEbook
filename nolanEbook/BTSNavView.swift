//
//  BTSView.swift
//  nolanEbook
//
//  Created by test on 2023/10/22.
//
import SwiftUI
//behind the scenes
struct BTSNavView: View {
    struct BTSPhoto: Identifiable {
        let id = UUID()
        let name: String
        var movie: String
    }
    
    let btsPhotos = [
        BTSPhoto(name: "tenetbts0",movie: "tenet"),
        BTSPhoto(name: "tenetbts1",movie: "tenet"),
        BTSPhoto(name: "batmanbts0",movie: "batman"),
        BTSPhoto(name: "batmanbts1",movie: "batman"),
        
        //BTSPhoto(name: "tenetbts0",movie: "tenet")
    ]
    var ShuffledbtsPhotos: [BTSPhoto] {
        return btsPhotos.shuffled()
    }
        @State private var show = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical ) {
                
                VStack(spacing:0){
                    
                    ForEach(ShuffledbtsPhotos) { btsPhoto in
                        //ZStack(){
                        NavigationLink {
                            if btsPhoto.movie == "tenet" {
                                tenetView()
                            } else if btsPhoto.movie == "batman" {
                                movieView()
                            } else {
                                ContentView()
                            }
                        } label: {
                            Image(btsPhoto.name)
                                .resizable()
                                .scaledToFill()
                                .animation(.easeInOut(duration: 4), value: show)
                                .onAppear{
                                    show = true
                                }
                        }
                    }
                }
                
                
            }.ignoresSafeArea()
            
        }
        
    }
}

#Preview {
    BTSNavView()
}
