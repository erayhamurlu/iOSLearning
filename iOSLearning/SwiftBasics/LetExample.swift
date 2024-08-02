//
//  LetView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct LetExample: View {
    // MARK: Kullanıcının TC kimlik numarasını sabit olarak tanımlıyoruz
    let userTC = "12345678901" // Kullanıcının TC kimlik numarası 12345678901 olarak sabit

    var body: some View {
        Text("Kullanıcı TC Kimlik No: \(userTC)") // Kullanıcı TC kimlik numarasını ekrana yazdırıyoruz
        
        Button("TC Kimlik No Değiştir") {
//             userTC = "98765432109" // Hata: Sabit değeri değiştiremezsiniz
        }
    }
}

// MARK: SwiftUI Preview yapısı
#Preview {
    LetExample()
}

