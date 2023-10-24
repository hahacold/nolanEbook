//
//  underdevelopmentView.swift
//  nolanEbook
//
//  Created by test on 2023/10/24.
//

import SwiftUI

struct underdevelopmentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                 .ignoresSafeArea()
            
            VStack {
                Image(systemName: "figure.fall")
                    .resizable()
                    .frame(width: 200,height: 200)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.white, .blue,.black]), startPoint: .top, endPoint: .bottom))
                Text("under development")
                    .font(.system(size:50))
            }
            
            
        }
        
    }
}

#Preview {
    underdevelopmentView()
}
