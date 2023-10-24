//
//  BTSView.swift
//  nolanEbook
//
//  Created by test on 2023/10/22.
//
import SwiftUI
//behind the scenes
struct BTSView: View {
    struct BTSPhoto: Identifiable {
        let id = UUID()
        let name: String
        var movie: String
    }
    
    let btsPhotos = [
        BTSPhoto(name: "tenetbts0",movie: "tenet"),
        BTSPhoto(name: "tenetbts1",movie: "tenet"),
        BTSPhoto(name: "tenetbts2",movie: "tenet"),
        BTSPhoto(name: "tenetbts3",movie: "tenet"),
        BTSPhoto(name: "batmanbts0",movie: "batman"),
        BTSPhoto(name: "batmanbts1",movie: "batman"),
        BTSPhoto(name: "dunkirkbts0",movie: "dunkirk"),
        BTSPhoto(name: "dunkirkbts1",movie: "dunkirk"),
        BTSPhoto(name: "inceptionbts0", movie: "inception"),
        BTSPhoto(name: "inceptionbts1", movie: "inception"),
        BTSPhoto(name: "inceptionbts2", movie: "inception"),
        BTSPhoto(name: "interstellarbts0", movie: "interstellar"),
        BTSPhoto(name: "interstellarbts1", movie: "interstellar"),
        BTSPhoto(name: "interstellarbts2", movie: "interstellar"),
        BTSPhoto(name: "oppenheimerbts0", movie: "oppenheimer")
        
        //BTSPhoto(name: "tenetbts0",movie: "tenet")
    ]
    var ShuffledbtsPhotos: [BTSPhoto] {
        return btsPhotos.shuffled()
    }
    func whichview(movie: String) -> some View {
        if movie == "tenet" {
            return AnyView(tenetView())
        } else if movie == "batman" {
            return AnyView(batmanView())
        }
//        else if movie == "dunkirk" {
//            return AnyView(dunkirkView())
//            //待增加
//        }
        else if movie == "inception" {
            return AnyView(inceptionView())
        }
        else if movie == "interstellar" {
            return AnyView(interstellarView())
        }
//        else if movie == "oppenheimer" {
//            return AnyView(oppenheimerView())
//        }
//        else if movie == "batman" {
//            return AnyView(movieView())
//        }
        else {
            return AnyView(underdevelopmentView())
        }
    }
    @State private var show = false
    var body: some View {
        NavigationView{             //Navigation Stack就無法
            //問老師
            ScrollView(.vertical ) {
                
                VStack(spacing:0){
                    
                    ForEach(ShuffledbtsPhotos) { btsPhoto in
                        //ZStack(){
                        
                        ZStack{
                            Image(btsPhoto.name)
                                .resizable()
                                .scaledToFill()
                            
                                .onTapGesture(count: 2){
                                    show = !show
                                }
                            NavigationLink {
                                whichview(movie: btsPhoto.movie)
                            } label: {
                                Text(btsPhoto.movie.capitalized)
                                    .bold()
                                    .italic()
                                    .padding(10)
                                    .background {
                                    
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundStyle(Gradient(colors: [.white,.gray]))
                                    }
                                    
                                    
                            }.offset(x:140,y:70)
                            
                        }.animation(.easeInOut(duration: 4), value: show)
                            .onAppear{
                                show = true
                            }
                    }
                }
                
                
            }.background(Gradient(colors: [.black,.gray,.white]))
                .ignoresSafeArea()
        }
        
        
    }
}

#Preview {
    BTSView()
}
