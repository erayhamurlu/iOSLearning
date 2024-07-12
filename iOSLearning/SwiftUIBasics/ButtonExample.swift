//
//  ButtonExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 12.07.2024.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        VStack {
            // MARK: Özelleştirilmiş Button Bileşeni
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("Tıklayın")
                    .padding() // Button'ın içindeki metni çevreleyen boşluğu artırır.
                    .background(Color.blue) // Button'ın arka plan rengini mavi yapar.
                    .foregroundColor(.white) // Button'ın içindeki metnin rengini beyaz yapar.
                    .cornerRadius(8) // Button'ın köşelerini yuvarlatır.
            }

            // MARK: Temel Button Bileşeni
            Button("Basit Button") {
                print("Basit düğmeye tıklandı")
            }
            .padding() // Button'ın içindeki metni çevreleyen boşluğu artırır.
            .background(Color.green) // Button'ın arka plan rengini yeşil yapar.
            .foregroundColor(.white) // Button'ın içindeki metnin rengini beyaz yapar.
            .cornerRadius(8) // Button'ın köşelerini yuvarlatır.
        }
    }
}

#Preview {
    ButtonExample()
}
