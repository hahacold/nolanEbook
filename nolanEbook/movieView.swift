//
//  movieView.swift
//  nolanEbook
//
//  Created by test on 2023/10/23.
//

import SwiftUI
struct movieMainPhoto: Identifiable {
    let id = UUID()
    let movie: String
    var zh: String
}
struct movieView: View {

    let moviePhotos = [
        movieMainPhoto(movie: "tenet", zh: "天能"),
        movieMainPhoto(movie: "batman", zh: "蝙蝠俠"),
        movieMainPhoto(movie: "inception", zh: "全面啟動"),
        movieMainPhoto(movie: "oppenheimer", zh: "奧本海默"),
        movieMainPhoto(movie: "interstellar", zh: "星際效應"),
        movieMainPhoto(movie: "dunkirk", zh: "敦克爾克大行動")
    ]
    
    var ShuffledmoviePhoto: [movieMainPhoto] {
        return moviePhotos.shuffled()
    }
    func whichview(movie: String) -> some View {
        if movie == "tenet" {
            return AnyView(tenetView())
        } else if movie == "batman" {
            return AnyView(movieView())
        } else {
            return AnyView(ContentView())
        }
    }
    @State private var show = false
    var body: some View {
        NavigationView{             //Navigation Stack就無法
            //問老師
            ScrollView(.vertical ) {
                
                VStack(spacing:0){
/*待研究文字為什麼不會跟著動
                    ForEach(ShuffledmoviePhoto) { moviePhoto in
                        //ZStack(){
                        NavigationLink {
                            whichview(movie: moviePhoto.movie)
                        } label: {
                            ZStack{
                                Image(moviePhoto.movie)
                                    .resizable()
                                    .scaledToFill()
                                    .animation(.easeInOut(duration: 4), value: show)
                                    .onAppear{
                                        show = true
                                    }
                                    .onTapGesture(count: 2){
                                        show = !show
                                    }
                                Text(moviePhoto.movie)
                                    .bold()
                                    .italic()
                                    .padding(10)
                                
                            }
                            
                        }
                    }
 
 */
                    
                    
                    ForEach(ShuffledmoviePhoto) { moviePhoto in
                        //ZStack(){
                        
                        ZStack{
                            Image(moviePhoto.movie)
                                .resizable()
                                .scaledToFill()
                            
                                .onTapGesture(count: 2){
                                    show = !show
                                }
                            NavigationLink {
                                whichview(movie: moviePhoto.movie)
                            } label: {
                                Text(moviePhoto.zh.capitalized)
                                    .bold()
                                    .italic()
                                    .padding(10)
                                    .background {
                                        
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundStyle(Gradient(colors: [.white,.gray]))
                                    }
                                
                                
                            }.offset(x:135,y:70)
                            
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
    movieView()
}
