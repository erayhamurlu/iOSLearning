//
//  Closure.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct Closure: View {
    var body: some View {
        VStack {
            // Orijinal dizi
            let sayilar = [1, 2, 3, 4, 5]
            
            // Closure kullanarak sayilar dizisinin her öğesinin karesini alıyoruz
            let kareler = sayilar.map { (sayi: Int) -> Int in
                return sayi * sayi
            }
            
            // MARK: - UI Elemanlarını oluşturma
            ForEach(kareler, id: \.self) { kare in
                Text("Sayı karesi: \(kare)")
            }
        }
    }
}

#Preview {
    Closure()
}
