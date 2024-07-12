//
//  ImageExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 11.07.2024.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        VStack {
            // Görselin ekrana yerleştirilmesi
            Image("ProfilePhoto")
                .resizable() // resizable, görselin yeniden boyutlandırılmasına olanak tanır
                .frame(width: 200, height: 200) // Görselin çerçeve boyutunu ayarlama
        }
        .padding()
    }
}

#Preview {
    ImageExample()
}
