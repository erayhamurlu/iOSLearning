//
//  OptionalUnwrapping.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct OptionalBindingIfLet: View {
    // MARK: Optional değişken tanımı
    var name: String? = "Ahmet"

    var body: some View {
        VStack {
            // MARK: Unwrapping işlemi
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
    OptionalBindingIfLet()
}
