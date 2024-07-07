//
//  FunctionsWithForEach.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

struct ReturnFunctions: View {
    
    @State var count = 0
    
    // MARK: - Geri Dönüş Değeri Olan Fonksiyon
    // Bu fonksiyon, sayaç değerini döndürür.
    func getCount() -> Int {
        return count
    }
    
    var body: some View {
        VStack {
            Button("Increase Count") {
                count += 1
                let currentCount = getCount()
                print("Current Count: \(currentCount)")
            }
        }
    }
}

#Preview {
    ReturnFunctions()
}
