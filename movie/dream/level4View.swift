//
//  level4View.swift
//  nolanEbook
//
//  Created by test on 2023/10/25.
//

import SwiftUI

struct level4View: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
                VStack{
                    Image("level4")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding()
                    Text("混亂層:林波")
                        .foregroundStyle(Color.accentColor)
                    Text("林波是《全面啟動》的最後一個層次，也是五個層次中的最後一個。 透過足夠的麻醉劑，深入夢境的層次將進入「原始的潛意識」。 林波象徵克里斯多福諾蘭花九年時間創作《全面啟動》，這是一個不可預測的夢境層次。 夢境的任何參與者都可以改變它，如果團隊的某個成員已經訪問過，那麼他們的林波遺跡仍將存在。 林波提供了自由和創造力，使現實和幻象幾乎不可區分，而時間扭曲極其極端，幾十年的時間在真實時間中只是短暫。")
                        .foregroundStyle(Color.accentColor)

                
            }.navigationTitle("第四層夢境")
//            NavigationLink {
//                level5View()
//            } label: {
//                Image("nolan")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 180)
//                    .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
//            }.navigationTitle("第四層夢境")
        }
    }
}

#Preview {
    level4View()
}
