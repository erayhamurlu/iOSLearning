//
//  ForLoop.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct ForEachExample: View {
    // MARK: Ürün listesini tanımlıyoruz
    let productList = ["Elma", "Armut", "Muz", "Üzüm", "Portakal"]

    var body: some View {
        VStack {
            // MARK: Her bir ürün için bir metin oluşturuyoruz
            /*
             ForEach içinde `id: \.self` ifadesi, her bir elemanı kendisiyle (yani elemanın değeriyle) benzersiz bir şekilde tanımlamak için kullanılır. Bu, elemanların kimliğini belirlemeye yarar.
             */
            ForEach(productList, id: \.self) { product in
                Text(product) // Her bir ürünün ismi
            }
        }
    }
}

// MARK: Önizleme bölümü
#Preview {
    ForEachExample()
}
