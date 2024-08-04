//
//  PrintView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

import SwiftUI

struct PrintExample: View {
    // Değişken tanımlaması
    var number: Int = 42

    var body: some View {
        // Düğme ile print() fonksiyonunu kullanma
        Button {
            // Düğmeye tıklandığında konsola sayı ve string içinde sayı yazdır
            print(number) // Değişkeni konsola yazdır
            print("Sayı: \(number)") // String içinde değişkeni konsola yazdır
        } label: {
            Text("Sayı Yazdır")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

#Preview {
    PrintExample()
}
