//
//  VariablesTypesExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 2.08.2024.
//

import SwiftUI

struct VariablesTypesExample: View {
    // Yemek bilgilerini saklamak için değişkenler
    var dishName: String = "Mantı" // Yemek ismi
    var dishPrice: Double = 15.99 // Yemek fiyatı
    var isVegetarian: Bool = false // Yemek vejetaryen mi?
    var servings: Int = 2 // Porsiyon sayısı

    var body: some View {
        VStack(spacing: 10) { // Her bir öğe arasında 10 birim boşluk bırak
            // Yemek ismi ve fiyatını gösteren metin
            Text("Yemek: \(dishName)")

            Text("Fiyat: \(dishPrice) TL")

            // Porsiyon sayısını gösteren metin
            Text("Porsiyon Sayısı: \(servings)")

            // Yemek vejetaryen mi bilgisini gösteren metin
            Text("Vejetaryen mi: \(isVegetarian)")
        }
    }
}

#Preview {
    VariablesTypesExample()
}
