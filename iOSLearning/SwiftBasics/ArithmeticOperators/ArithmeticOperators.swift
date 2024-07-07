//
//  ArithmeticOperators.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

import SwiftUI

struct ArithmeticOperators: View {
    // Aritmetik işlemleri göstermek için değişkenler
    let number1 = 10 // değer: 10
    let number2 = 20 // değer: 20

    var body: some View {
        VStack {
            Text("Swift ile Aritmetik Operatörler")
                .font(.largeTitle)
                .padding()

            // MARK: - Toplama
            Button(action: {
                let additionResult = number1 + number2
                print("Toplama: \(number1) + \(number2) = \(additionResult)")
            }) {
                Text("Toplama: \(number1) + \(number2)")
                    .padding()
            }

            // MARK: - Çıkarma
            Button(action: {
                let subtractionResult = number2 - number1
                print("Çıkarma: \(number2) - \(number1) = \(subtractionResult)")
            }) {
                Text("Çıkarma: \(number2) - \(number1)")
                    .padding()
            }

            // MARK: - Çarpma
            Button(action: {
                let multiplicationResult = number1 * number2
                print("Çarpma: \(number1) * \(number2) = \(multiplicationResult)")
            }) {
                Text("Çarpma: \(number1) * \(number2)")
                    .padding()
            }

            // MARK: - Bölme
            Button(action: {
                let divisionResult = number2 / number1
                print("Bölme: \(number2) / \(number1) = \(divisionResult)")
            }) {
                Text("Bölme: \(number2) / \(number1)")
                    .padding()
            }

            // MARK: - Mod Alma
            Button(action: {
                let modulusResult = number2 % number1
                print("Mod Alma: \(number2) % \(number1) = \(modulusResult)")
            }) {
                Text("Mod Alma: \(number2) % \(number1)")
                    .padding()
            }
        }
    }
}

#Preview {
    ArithmeticOperators()
}
