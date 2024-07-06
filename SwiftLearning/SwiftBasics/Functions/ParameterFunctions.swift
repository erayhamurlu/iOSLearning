//
//  FunctionsWithParameters.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.06.2024.
//

import SwiftUI

struct ParameterFunctions: View {
    
    @State var count = 0
    
    // MARK: - Parametre Alan Fonksiyon
    // Bu fonksiyon, aldığı değeri ekleyerek sayaç değerini artırır.
    func addToCount(value: Int) {
        count += value
        print(count)
    }
    
    var body: some View {
        VStack {
            // Parametre alan fonksiyon kullanımı
            Button("Add 5 to Count") {
                addToCount(value: 5)
            }
            
            Button("Add 10 to Count") {
                addToCount(value: 10)
            }
        }
    }
}

#Preview {
    ParameterFunctions()
}
