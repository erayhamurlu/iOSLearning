//
//  Array.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct ArrayExample: View {
    // MARK: - Öğrenci adlarını içeren bir array oluşturuyoruz
    var studentNames: [String] = ["Ahmet", "Zeynep", "Mehmet", "Ayşe", "Elif"]

    var body: some View {
        VStack {
            Text("Öğrenci İsimleri:")
                .font(.headline)
            // Her bir array elemanını manuel olarak gösteriyoruz
            Text(studentNames[0]) // Ahmet
            Text(studentNames[1]) // Zeynep
            Text(studentNames[2]) // Mehmet
            Text(studentNames[3]) // Ayşe
            Text(studentNames[4]) // Elif
        }
        .padding() // Görünümü biraz daha güzel hale getirmek için padding ekledik
    }
}

#Preview {
    ArrayExample()
}
