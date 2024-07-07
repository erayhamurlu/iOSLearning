//
//  SimpleFunctions.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.06.2024.
//

import SwiftUI

struct SimpleFunctions: View {
    
    @State var count = 0
    
    func increaseCount() {
        count += 1
        print(count)
    }
    
    var body: some View {
        VStack {
            // MARK: - Kötü kod örneği
            // Her buton içerisinde matematiksel işlemi tekrar ediyorum. Bu hata yapma olasılığımı arttır. Ve gereksiz kod tekrarına sebep olur.
            Button("Increase Count") {
                count += 1
                print(count)
            }
            
            
            Button("Increase Count") {
                count += 1
                print(count)
            }
            
            // MARK: - İyi kod örneği
            // Burada tekrar eden arttırma işlemini bir fonksiyona atayıp kod tekrarını azalıyorum. Ve hata yapma olasılığımı düşüyorum.
            Button("Increase Count") {
                increaseCount()
            }
            
            Button("Increase Count") {
                increaseCount()
            }
        }
    }
}

#Preview {
    SimpleFunctions()
}
