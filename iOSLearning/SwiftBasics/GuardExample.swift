//
//  GuardExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct GuardExample: View {
    // Kullanıcının yaşını temsil eden değişken
    let userAge: Int = 121
    // Hata veya doğrulama mesajını saklayan değişken
    @State var message: String = ""

    var body: some View {
        VStack {
            Text(message)
                .padding()

            // Kullanıcının yaşını doğrulayan buton
            Button {
                // Yaşın geçerliliğini kontrol ediyoruz
                guard userAge >= 0 && userAge <= 120 else {
                    message = "Yaş geçerli değil. Lütfen 0 ile 120 arasında bir değer girin."
                    return
                }
                message = "Yaşınız: \(userAge) - Geçerli bir yaş!"
            } label: {
                Text("Yaşı Doğrula")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    GuardExample()
}
