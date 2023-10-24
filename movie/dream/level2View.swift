//
//  level2View.swift
//  nolanEbook
//
//  Created by test on 2023/10/25.
//

import SwiftUI

struct level2View: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
     
            NavigationLink {
                level3View()
            } label: {
                VStack{
                    Image("level2")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding()
                        
                    Text("第二層：飯店\n第二層發生在豪華飯店，這次是約瑟夫·戈登-萊維特的亞瑟擔任夢主。 面對菲舍的投影意外抵抗，科布採用了冒險的「查爾斯先生」策略。 這個策略涉及科布假扮成“查爾斯先生”，假裝是菲舍的心理安全的負責人。 第二層是《全面啟動》中零重力走廊打架場景發生的地方，也是本片主要搶劫的第三層。 科佈告訴商人他正在做夢，以贏得他的信任，並扮演一個旨在保護菲舍安全的投影角色。 這個策略奏效，菲舍開始相信科布的團隊，錯誤地認為他們是他內部安全系統的一部分。")
                    Text("點擊進入夢境")
                        .font(.system(size: 28))
                        .foregroundStyle(.brown)

                }
            }.navigationTitle("第二層夢境")
        }
    }
}

#Preview {
    level2View()
}
