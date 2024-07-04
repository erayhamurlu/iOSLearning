//
//  StringView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct StringView: View {
    // Orijinal metin
    let originalText = "Merhaba, dünya!"

    // MARK: - Büyük Harflere Çevirme
    // Orijinal metni büyük harflere çevirir
    var uppercasedText: String {
        return originalText.uppercased()
    }

    // MARK: - Kelime Değiştirme
    // "dünya" kelimesini "Swift" ile değiştirir
    var replacedText: String {
        return originalText.replacingOccurrences(of: "dünya", with: "Swift")
    }

    // MARK: - Metni Tersine Çevirme
    // Metni tersine çevirir
    var reversedText: String {
        return String(originalText.reversed())
    }

    var body: some View {
        VStack {
            Text("Orijinal Metin: " + originalText)
            Text("Büyük Harflerle: " + uppercasedText)
            Text("Değiştirilmiş Metin: " + replacedText)
            Text("Tersine Çevrilmiş Metin: " + reversedText)
        }
        .padding()
    }
}

#Preview {
    StringView()
}
