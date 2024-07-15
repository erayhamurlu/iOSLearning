//
//  StateExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 12.07.2024.
//

import SwiftUI

struct StateExample: View {
    // MARK: - State tanımı
    @State private var message = "Merhaba Dünya"

    var body: some View {
        VStack {
            // State değişkenini kullanan Text view
            Text(message)
                .padding()

            // Düğme ve tıklama olayı
            Button {
                message = "Düğmeye tıklandı" // State değişkeni güncelleniyor
            } label: {
                Text("Click Me")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

// Önizleme
#Preview {
    StateExample()
}
