//
//  UserDefaultsExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.08.2024.
//

import SwiftUI

struct UserDefaultsExample: View {
    @AppStorage("bookCounter") var bookCounter = 0  // @AppStorage kullanarak veriyi UserDefaults'ta sakla

    var body: some View {
        VStack {
            Text("\(bookCounter)")  // Kitap sayısını göster
                .font(.largeTitle)
            Text("Şu ana kadar okunan kitap sayısı")
                .font(.title3)

            Button {
                bookCounter += 1  // Butona basıldığında kitap sayısını artır
            } label: {
                Label("Kitap Ekle", systemImage: "book.fill")
            }
        }
        .padding()
    }
}

#Preview {
    UserDefaultsExample()
}
