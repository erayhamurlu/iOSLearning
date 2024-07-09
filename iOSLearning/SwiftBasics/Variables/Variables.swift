//
//  Variables.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct VariablesView: View {
    // MARK: - Değişkenler
    // Kişinin adı, yaşı ve şehir bilgilerini saklıyoruz
    var name = "Ahmet" // Kişinin adı
    var age = 30 // Kişinin yaşı
    var city = "İstanbul" // Kişinin yaşadığı şehir
    
    var body: some View {
        VStack {
            // Değişkenleri ekranda gösteriyoruz
            Text("Name: \(name)")
                .font(.title)
            Text("Age: \(age)")
                .font(.title)
            Text("City: \(city)")
                .font(.title)
        }
        .padding()
    }
}

// MARK: - Preview
#Preview {
    VariablesView()
}