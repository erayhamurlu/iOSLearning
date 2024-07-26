//
//  HomeWork1.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 10.07.2024.
//

import SwiftUI

struct ZStackHomework: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("ProfilePhoto")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("Jane Doe")
                        .font(.headline)
                    Text("Chief Technology Officer")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary
                .colorInvert()
                .opacity(0.80))
        }
    }
}

#Preview {
    ZStackHomework()
}
