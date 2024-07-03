//
//  TypeCasting.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct TypeCasting: View {
    @State private var textInput: String = "" // Kullanıcıdan alınan metin girdisi
    
    var body: some View {
        VStack {
            TextField("Bir sayı girin", text: $textInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            Button("Hesapla") {
                calculateSquare()
            }
            .padding()
        }
        .padding()
    }
    
    // MARK: - Bir tam sayının karesini hesaplamak için fonksiyon
    func calculateSquare() {
        if let number = Int(textInput) { // Metin girdisini tam sayıya dönüştürüyoruz
            let square = number * number // Tam sayının karesi hesaplanıyor
            print("Girilen sayının karesi: \(square)")
        } else {
            print("Lütfen geçerli bir sayı girin.") // Geçersiz giriş durumu
        }
    }
}

#Preview {
    TypeCasting()
}
