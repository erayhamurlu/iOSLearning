//
//  ZStackExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct ZStackExample: View {
    // MARK: Arka plan rengi ve metin
    let backgroundColor = Color.blue // Arka plan rengi
    let foregroundText = "Merhaba Dünya!" // Önde gösterilecek metin

    var body: some View {
        ZStack {
            // MARK: Arka plan dikdörtgeni
            Rectangle()
                .fill(backgroundColor)
                .frame(width: 200, height: 100)
                .cornerRadius(10)
            
            // MARK: Ön planda metin
            Text(foregroundText)
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ZStackExample()
}
