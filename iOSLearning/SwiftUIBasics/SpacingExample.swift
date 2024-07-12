//
//  SpacingExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 11.07.2024.
//

import SwiftUI

struct SpacingExample: View {
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) { // VStack içinde spacing parametresi kullanılıyor
            Text("Merhaba, SwiftUI!") // İlk Text view
            
            Text("Spacing Kullanımı") // İkinci Text view
            
            Text("Aradaki boşluk 20 birim") // Üçüncü Text view
        }
    }
}

#Preview {
    SpacingExample()
}
