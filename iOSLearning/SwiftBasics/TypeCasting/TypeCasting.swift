//
//  TypeCasting.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct TypeCastingExample: View {
    // String to Int Dönüşümü için değişkenler
    let text = "42" // Metin girdisi
    
    // Double to Int Dönüşümü için değişkenler
    let doubleNumber: Double = 7.89 // Ondalık sayı girdisi
    
    var body: some View {
        VStack {
            // String to Int Dönüşümü Butonu
            Button("String to Int Dönüştür") {
                let intValue = Int(text) ?? 0 // Metin girdisini tam sayıya dönüştürüyoruz, dönüşüm başarısız olursa 0 atanır
                // Bu satırda, "Int(text)" ifadesi optional bir Int döner.
                // Eğer dönüşüm başarılı olursa "intValue" değişkeni dönüştürülen değeri alır,
                // aksi halde 0 değeri atanır. Bu, "?? 0" operatörü ile sağlanır.
                print("Girilen tam sayı: \(intValue)") // Sonucu konsola yazdırıyoruz
            }
            
            // Double to Int Dönüşümü Butonu
            Button("Double to Int Dönüştür") {
                let intValue = Int(doubleNumber) // Ondalık sayıyı tam sayıya dönüştürüyoruz
                print("Ondalık sayının tam sayı hali: \(intValue)") // Sonucu konsola yazdırıyoruz
            }
        }
    }
}

#Preview {
    TypeCastingExample()
}
