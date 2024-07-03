//
//  WhileExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct WhileExample: View {
    var body: some View {
        VStack {
            Text("While Döngüsü Örneği")
                .font(.largeTitle)
                .padding()
            
            // Butona basıldığında generateNumbers fonksiyonunu çağır
            Button(action: generateNumbers) {
                Text("Sayıları Yazdır")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
    
    // 1'den 10'a kadar olan sayıları yazdıran fonksiyon
    func generateNumbers() {
        var i = 1
        
        while i <= 10 {
            print(i)
            i += 1
        }
    }
}

// MARK: - Preview
#Preview {
    WhileExample()
}
