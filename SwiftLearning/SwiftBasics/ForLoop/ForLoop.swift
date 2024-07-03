//
//  ForLoop.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct ForLoop: View {
    let names = ["Ahmet", "Ayşe", "Mehmet", "Fatma"] // İsimlerin yer aldığı bir dizi

    var body: some View {
        VStack {
            // MARK: For döngüsü ile isimleri yazdırma
            ForEach(names, id: \.self) { name in
                Text(name)
            }
        }
    }
}

// Preview yapısı
#Preview {
    ForLoop()
}
