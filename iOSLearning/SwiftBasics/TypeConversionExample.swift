//
//  TypeCasting.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct TypeConversionExample: View {
    // Kullanıcıdan alınan yaş bilgisi string olarak başlatıldı.
    var userAgeInput: String = "25"

    var body: some View {
        VStack {
            // String'den Int'e güvenli dönüşüm yapılıyor
            if let userAge = Int(userAgeInput) {
                // Dönüşüm başarılıysa, kullanıcının gelecekteki yaşı hesaplanıyor
                let futureAge = userAge + 2 // İki yıl ileri taşındı
                Text("İki yıl sonra kullanıcının yaşı: \(futureAge)")
            } else {
                // Dönüşüm başarısızsa hata mesajı gösteriliyor
                Text("Geçersiz bir yaş girdiniz.")
            }
        }
    }
}

#Preview {
    TypeConversionExample()
}
