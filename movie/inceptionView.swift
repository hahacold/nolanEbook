//
//  inceptionView.swift
//  nolanEbook
//
//  Created by test on 2023/10/24.
//

import SwiftUI

struct inceptionView: View {
    var body: some View {
        NavigationStack{
            
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                
                NavigationLink {
                    level1View()
                } label: {
                    VStack{
                        Image("reality")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding()
                            
                        Text("賞金獵人柯布，他的工作是進入人們的夢境中，竊取他們的機密。柯布被一位商人聘請，要求他不是竊取夢境中的想法，而是要在夢境中種下一個想法。柯布組建了一個團隊，進入了目標人物的夢境中，並在夢境中創造了多層次的夢境。")
                        Text("點擊進入夢境")
                            .font(.system(size: 28))
                            .foregroundStyle(.brown)
                        

                    }
                }.navigationTitle("現實")
            }
        }
    }
}

#Preview {
    inceptionView()
}
