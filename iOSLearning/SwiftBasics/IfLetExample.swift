//
//  OptionalUnwrapping.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct IfLetExample: View {
    // Opsiyonel bir değişken tanımlıyoruz
    var name: String?

    var body: some View {
        VStack {
            // MARK: if let kullanarak opsiyonel değeri kontrol ediyoruz
            if let actualName = name {
                // Eğer name nil değilse, ismi kullanarak bir mesaj gösteriyoruz
                Text("Merhaba, \(actualName)!")
            } else {
                // Eğer name nil ise, hata mesajı gösteriyoruz
                Text("İsim bulunamadı.")
            }
        }
    }
}

#Preview {
    IfLetExample()
}
