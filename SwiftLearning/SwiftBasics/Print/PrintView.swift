//
//  PrintView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct PrintView: View {
    // MARK: - Değişkenler
    // Konsola yazdırmak için kullanılacak değişkenler
    let mesaj = "Selam"
    let sayi = 42
    let sehir = "İstanbul"
    let ülke = "Türkiye"
    
    var body: some View {
        VStack {
            Text("Merhaba, dünya!")
                .padding()
            
            Button(action: {
                // MARK: print() metodu kullanımı
                // Bir mesajı konsola yazdırır
                print("Butona tıklandı!")
                
                // Bir değişkenin değerini konsola yazdırır
                print("Mesaj: \(mesaj), Sayı: \(sayi)")
                
                // Türkçe karakterlerle değişkenler atama
                print("Şehir: \(sehir), Ülke: \(ülke)")
            }) {
                Text("Tıkla")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    PrintView()
}
