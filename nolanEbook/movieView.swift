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
    //var movie: String
}
struct movieView: View {
    let moviePhotos = [
        movieMainPhoto(movie: "tenet"),
        movieMainPhoto(movie: "batman"),
        movieMainPhoto(movie: "inception"),
        movieMainPhoto(movie: "oppenheimer"),
        movieMainPhoto(movie: "interstellar"),
        movieMainPhoto(movie: "dunkirk")
        
        //BTSPhoto(name: "tenetbts0",movie: "tenet")
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
                }
                
                
            }.background(Gradient(colors: [.black,.gray,.white]))
                .ignoresSafeArea()
        }
        
        
    }
}

#Preview {
    movieView()
}
