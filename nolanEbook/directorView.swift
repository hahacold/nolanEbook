//
//  directorView.swift
//  nolanEbook
//
//  Created by test on 2023/10/22.
//

import SwiftUI

struct directorView: View {
    var body: some View {
        Image("nolan")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    directorView()
}
