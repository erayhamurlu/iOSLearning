//
//  IfControllers.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct IfElseExample: View {
    // Kullanıcının yaşını temsil eden bir değişken
    var userAge = 20 // Kullanıcının yaşı: 20

    var body: some View {
        VStack {
            // MARK: Kullanıcının yaşına göre mesaj göster
            if userAge < 18 {
                // Eğer yaş 18'den küçükse
                Text("Kullanıcı reşit değil") // Mesaj: Kullanıcı reşit değil
            } else if userAge < 65 {
                // Eğer yaş 18 ile 65 arasında ise
                Text("Kullanıcı yetişkin") // Mesaj: Kullanıcı yetişkin
            } else {
                // Eğer yaş 65'den büyükse
                Text("Kullanıcı yaşlı") // Mesaj: Kullanıcı yaşlı
            }
        }
    }
}

#Preview {
    IfElseExample()
}
