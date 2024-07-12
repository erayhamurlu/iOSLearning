//
//  SpacerExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 9.07.2024.
//

import SwiftUI

struct SpacerExample: View {
    var body: some View {
        VStack {
            // İlk Text
            Text("Birinci Metin")
            
            // Text öğeleri arasına boşluk ekliyoruz
            Spacer()
            
            // İkinci Text
            Text("İkinci Metin")
        }
        .padding()
    }
}

#Preview {
    SpacerExample()
}
