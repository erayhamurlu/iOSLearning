//
//  IfControllers.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct IfControllers: View {
    // Kullanıcının yaşını temsil eden değişken
    @State private var userAge: Int = 17 // Kullanıcı yaşı bir değer ile başlatıldı

    var body: some View {
        VStack {
            // Kullanıcıdan yaşını girmesini isteyen bir TextField
            TextField("Yaşınızı giriniz", value: $userAge, formatter: NumberFormatter())
                .padding()
                .keyboardType(.numberPad)
            
            // If kontrolü ile yaşa göre farklı mesajlar göster
            if userAge >= 18 {
                Text("Reşitsiniz.")
                    .foregroundColor(.green)
                    .padding()
            } else {
                Text("Reşit değilsiniz.")
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    IfControllers()
}
