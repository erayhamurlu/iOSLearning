//
//  CommentView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct ConmmentView: View {
    // MARK: - Body
    // Ana içerik görünümü
    var body: some View {
        VStack {
            // Ekranda gösterilecek metin
            Text("Merhaba, SwiftUI!")
                .padding() // Metin etrafına dolgu ekler
            
            // Değişkenler
            let mesaj = "Hoş geldiniz"
            let bilgi = "Bu bir SwiftUI uygulamasıdır."
            
            // Değişkenlerin ekrana yazdırılması
            Text(mesaj)
                .padding() // Metin etrafına dolgu ekler
            Text(bilgi)
                .padding() // Metin etrafına dolgu ekler
            
            /*
            Bu bir
            çoklu
            yorum satırıdır.
            Yukarıdaki kod parçalarında,
            metin ve değişkenleri ekrana yazdırıyoruz.
            */
        }
    }
}

// MARK: - Preview
// Önizleme yapısı
#Preview {
    ConmmentView()
}
