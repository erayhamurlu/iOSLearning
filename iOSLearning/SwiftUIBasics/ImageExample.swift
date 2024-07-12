//
//  ImageExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 11.07.2024.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
            // Görselin ekrana yerleştirilmesi
            Image("ProfilePhoto")
                .resizable() // resizable, görselin yeniden boyutlandırılmasına olanak tanır
                .frame(width: 200, height: 200) // Görselin çerçeve boyutunu ayarlama
    }
}

#Preview {
    ImageExample()
}
