//
//  Closure.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct Closure: View {
    let numbers = [1, 2, 3, 4, 5]
    
    // Closure'ı tanımlama
    let squareCalculation: (Int) -> Int = { (number: Int) -> Int in
        return number * number
    }
    
    var body: some View {
        VStack {
            // Closure kullanarak numbers dizisinin her öğesinin karesini alıyoruz
            let squares = numbers.map(squareCalculation)
            
            // MARK: - UI Elemanlarını oluşturma
            ForEach(squares, id: \.self) { square in
                Text("Sayı karesi: \(square)")
            }
        }
    }
}

#Preview {
    Closure()
}
