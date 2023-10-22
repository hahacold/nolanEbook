//
//  movieView.swift
//  nolanEbook
//
//  Created by test on 2023/10/23.
//

import SwiftUI

struct movieView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    BTSView()
                } label: {
                    Text("movie")
                        .font(.largeTitle)
                }
                Image(systemName: "clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
            .navigationTitle("那個人是你嗎")
        }
    }
}

#Preview {
    movieView()
}
