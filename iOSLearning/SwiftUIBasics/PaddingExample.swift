//
//  PaddingExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 9.07.2024.
//

import SwiftUI

struct PaddingExample: View {
    var body: some View {
            // MARK: Metin
            Text("Merhaba, Dünya!")
                .padding() // Metine padding ekleniyor
                .background(Color.green) // Arkaplana renk ekliyoruz padding'i daha net anlayabilmek için.
    }
}

#Preview {
    PaddingExample()
}
