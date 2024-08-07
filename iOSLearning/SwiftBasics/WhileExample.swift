//
//  WhileExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//
import SwiftUI

struct WhileExample: View {
    // Değişken tanımlamaları struct içinde, body'sinin üzerinde olmalı
    var numbers = [1, 2, 3, 4, 5] // İşlenecek sayı dizisi
    @State var total = 0 // Toplamı tutacak değişken

    var body: some View {
        VStack {
            Text("Toplam: \(total)") // Toplamı gösteren metin

            Button {
                var index = 0 // Dizinin başlangıç indeksini belirler
                while index < numbers.count { // Koşul: index, dizinin uzunluğundan küçük olduğu sürece
                    print("\(numbers[index]) + \(total)") // Toplama işlemi
                    
                    total += numbers[index] // Dizinin mevcut elemanını toplam değerine ekle
                    
                    print("Toplam = \(total)") // Toplam değerini konsola yazdır
                    index += 1 // İndeksi bir artır
                }
                print("Düğmeye tıklandı")
            } label: {
                Text("Toplamı Hesapla")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

// Önizleme
#Preview {
    WhileExample()
}
