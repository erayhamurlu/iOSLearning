//
//  BreakContinue.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct BreakContinueExample: View {
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    var body: some View {
        VStack {
            Button {
                for number in numbers {
                    if number == 5 {
                        print("Sayı 5'e ulaşıldı, döngü sona eriyor.")
                        break
                    }
                    
                    if number == 3 {
                        print("Sayı 3'e ulaşıldı, bu tekrarı atlayıp devam ediyoruz.")
                        continue
                    }
                    
                    print("Sayı: \(number)")
                }
            } label: {
                Text("Döngüyü Başlat")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    BreakContinueExample()
}
