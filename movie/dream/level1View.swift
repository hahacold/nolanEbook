//
//  dreamleve1View.swift
//  nolanEbook
//
//  Created by test on 2023/10/25.
//

import SwiftUI

struct level1View: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            NavigationLink {
                level2View()
            } label: {
                VStack{
                    Image("level1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding()
                        
                    Text("第一層：下雨的城市\n第一個夢境層位於一個龐大的城市中，是夢境的開始，也是《全面啟動》中的第二層。就像所有三個夢境層次一樣，這個層次的設計都由阿里阿德妮完成，她在任務開始前教給了每個團隊成員。 這個城市的夢主是尤塞夫，因為這位藥劑師需要上廁所，所以城市天空下起了雨。")
                    Text("點擊進入夢境")
                        .font(.system(size: 28))
                        .foregroundStyle(.brown)

                }
            }.navigationTitle("第一層夢境")
        }

        
    }
}

#Preview {
    level1View()
}
