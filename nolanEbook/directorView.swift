//
//  directorView.swift
//  nolanEbook
//
//  Created by test on 2023/10/22.
//

import SwiftUI

struct directorView: View {
    struct BTSPhoto: Identifiable {
        let id = UUID()
        let name: String
        var movie: String
    }
    @State private var show = false
    var body: some View {
        ZStack{
           LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            Image("nolan")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .animation(.easeInOut(duration: 4), value: show)
                .onAppear{
                    show = true
                }
        }
        
        
        
        
        
    }
}

#Preview {
    directorView()
}
