//
//  level3View.swift
//  nolanEbook
//
//  Created by test on 2023/10/25.
//

import SwiftUI

struct level3View: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            
            NavigationLink {
                level4View()
            } label: {
                VStack{
                    Image("level3")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding()
                        
                    Text("第三層：雪堡醫院\n阿里阿德妮設計的最後一個夢境層次，由湯姆哈迪的伊姆斯生成，是一個被大雪覆蓋的像堡壘一樣的醫院。 羅伯特的父親的投影躺在裡面，旁邊是他傳說中的秘密遺囑。 在第3層，也就是《全面啟動》的5個階段中的第四個階段，菲舍認為他必須發現裡面的東西，以理解彼得叔叔對他的陰謀。 科布的團隊希望他能夠到達迷宮的中心，因為真正的植入將在那裡最終發生。 在擊退更頑固的對手後，菲舍進入了一間嚴密守衛的房間，裡面有一個他瀕臨死亡的父親的投影。")
                    Text("點擊進入夢境")
                        .font(.system(size: 28))
                        .foregroundStyle(.brown)

                }
            }.navigationTitle("第三層夢境")
        }
    }
}

#Preview {
    level3View()
}
