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
    var body: some View {
        ZStack{
           LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            HStack {
                
                Image("nolan")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                Text("克里斯多福·諾蘭是一位英裔美國電影導演，以複雜情節的好萊塢大片聞名，並被認為是21世紀頂級電影製作人。\n他的電影風格獨具特色，常常探討哲學、時間、記憶等主題，並以非線性敘事和後設元素為特色。\n他的作品充滿受到數學影響的圖像和概念、非常規的敘事結構、現場特效、實驗性音景、大畫幅膠片攝影和唯物主義角度。\n他的電影風格深受觀眾喜愛，並獲得了眾多獎項和提名")
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.white, .red,.black]), startPoint: .top, endPoint: .bottom))
                    
            }
        }
        
        
        
        
        
    }
}

#Preview {
    directorView()
}
