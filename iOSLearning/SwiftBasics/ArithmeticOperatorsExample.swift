//
//  ArithmeticOperators.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct ArithmeticOperatorsExample: View {
    var firstNumber: Int = 20 // İlk sayı
    var secondNumber: Int = 4 // İkinci sayı

    var body: some View {
        VStack(spacing: 20) {
            // MARK: Toplama İşlemi
            Text("Toplama: \(firstNumber + secondNumber)") // Sonuç: 24

            // MARK: Çıkarma İşlemi
            Text("Çıkarma: \(firstNumber - secondNumber)") // Sonuç: 16

            // MARK: Çarpma İşlemi
            Text("Çarpma: \(firstNumber * secondNumber)") // Sonuç: 80

            // MARK: Bölme İşlemi
            Text("Bölme: \(firstNumber / secondNumber)") // Sonuç: 5

            // MARK: Modül İşlemi
            Text("Kalan: \(firstNumber % secondNumber)") // Sonuç: 0

            // Buton örneği
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("Hesapla")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ArithmeticOperatorsExample()
}
