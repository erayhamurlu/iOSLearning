//
//  Variables.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct VariablesExample: View {
    // MARK: - Değişkenler
    // Kişinin adı, yaşı ve şehir bilgilerini saklıyoruz
    var name = "Mehmet" // Kişinin adı
    var age = 50 // Kişinin yaşı
    var city = "İstanbul" // Kişinin yaşadığı şehir
    
    var body: some View {
        Text("İsim: \(name)")
            
        Text("Yaş: \(age)")
            
        Text("Şehir: \(city)")
    }
}

// MARK: - Preview
#Preview {
    VariablesExample()
}
