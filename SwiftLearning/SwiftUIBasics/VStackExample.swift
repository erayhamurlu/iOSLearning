//
//  VStackExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct VStackExample: View {
    // MARK: Değişken Tanımlamaları
    let title: String = "Merhaba, Dünya!"
    let subtitle: String = "SwiftUI ile iOS geliştirme"
    let description: String = "Bu dersimizde VStack kullanımını öğreniyoruz."

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Başlık
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            // Alt Başlık
            Text(subtitle)
                .font(.title)
                .foregroundColor(.green)
            
            // Açıklama
            Text(description)
                .font(.body)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    VStackExample()
}
