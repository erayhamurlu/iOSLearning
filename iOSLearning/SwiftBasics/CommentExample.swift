//
//  CommentView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct CommentExample: View {
    // MARK: - Değişkenler
    // Bu bölümdeki değişkenler, CommentExample görünümünde kullanılacak
    
    // Butonun başlığı
    var buttonTitle = "Tıklayın"
    
    // Gösterilecek mesaj
    var message = "Merhaba, SwiftUI!"
    
    // MARK: - Body
    // Bu bölüm, görünümün ana yapısını tanımlar
    var body: some View {
        VStack {
            // Kullanıcıya mesaj gösteren metin
            Text(message)
                // Metnin yazı tipi boyutunu ayarla
                .font(.title)
            
            // Düğme
            Button {
                // Düğmeye tıklanınca terminale mesaj yazdır
                print("Düğmeye tıklandı")
            } label: {
                // Düğme üzerindeki metin ve tasarım
                Text(buttonTitle)
                    .padding() // Düğmenin etrafındaki boşluğu ayarla
                    .background(Color.blue) // Arka plan rengini mavi yap
                    .foregroundColor(.white) // Yazı rengini beyaz yap
                    .cornerRadius(8) // Kenarları yuvarlat
            }
        }
        .padding() // Tüm görünümün etrafındaki boşluğu ayarla
    }
}

/*
 Önizleme yapabilmek için kullanılacak
 Bu kod parçası, tasarımınızı Xcode'da canlı önizlemenizi sağlar.
*/
#Preview {
    CommentExample()
}
