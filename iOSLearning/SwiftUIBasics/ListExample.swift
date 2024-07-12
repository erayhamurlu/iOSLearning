//
//  ListExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 12.07.2024.
//

import SwiftUI

struct ListExample: View {
    var body: some View {
        // MARK: List kullanarak öğeleri listeliyoruz
        List {
            // MARK: Text kullanarak liste öğeleri oluşturuyoruz
            Text("İstanbul")
            Text("Ankara")
            Text("İzmir")
            Text("Bursa")
            Text("Antalya")
            Text("Adana")
            Text("Gaziantep")
            Text("Konya")
            Text("Kayseri")
            Text("Eskişehir")
        }.listStyle(.automatic) // listStyle ekleyerek listemin görünüm şeklini değiştirebilirim.
    }
}

#Preview {
    ListExample()
}
