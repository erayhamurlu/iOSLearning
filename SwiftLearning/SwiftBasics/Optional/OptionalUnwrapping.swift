//
//  OptionalUnwrapping.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct OptionalUnwrapping: View {
    // MARK: Optional değişken tanımı
    var name: String?

    var body: some View {
        VStack {
            // MARK: Unwrapping işlemi
            // Değişkenin nil olup olmadığını if let ile kontrol ediyoruz.
            // if let'i bir sonraki sayfada detaylı anlatıyor olacağız.
            // Bir değişkenin değeri sağlanmamışsa nil durumundadır.
            if let unwrappedName = name {
                // Eğer name değişkeninin değeri varsa, unwrappedName değişkenine atanır ve ekrana yazdırılır.
                Text("Merhaba, \(unwrappedName)!")
                    .padding()
            } else {
                // Eğer name değişkeninin değeri yoksa, uyarı mesajı yazdırılır.
                Text("İsim bulunamadı.")
                    .padding()
            }
        }
    }
}

#Preview {
    OptionalUnwrapping()
}
