//
//  interstellarView.swift
//  nolanEbook
//
//  Created by test on 2023/10/24.
//

import SwiftUI

struct interstellarView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray, .white]), startPoint: .top, endPoint: .bottom)
                 .ignoresSafeArea()
                 .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    interstellarView()
}
