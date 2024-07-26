//
//  ZStackExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct ZStackExample: View {
    // MARK: Arka plan rengi ve metin
    var body: some View {
        ZStack {
            // MARK: Arka plan dikdörtgeni
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(10)
            
            // MARK: Ön planda metin
            Text("Merhaba Dünya!")
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ZStackExample()
}
