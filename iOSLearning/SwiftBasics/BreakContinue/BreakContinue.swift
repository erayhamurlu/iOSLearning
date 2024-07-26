//
//  BreakContinue.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct BreakContinue: View {
    // Dizideki sayılar
    let numbers = [5, 8, 12, 9, 20, 10, 14, 7]
    
    var body: some View {
        VStack {
            // Buton oluşturuluyor. Butona basıldığında detectNumber fonksiyonu çağrılacak.
            Button("Detect Numbers") {
                for number in numbers {
                    // Eğer sayı 20'den büyükse, mesaj yazdırılır ve döngü sonlandırılır (break).
        //            if number == 20 {
        //                print("20 sayısı bulundu")
        //                break
        //            }
        //
        //            // Eğer sayı 10'dan küçükse, mesaj yazdırılır ve döngünün geri kalan kısmı atlanarak devam edilir (continue).
                    if number == 10 {
                        continue
                    }
                    
                    // Yukarıdaki koşullara uymayan sayılar için mesaj yazdırılır.
                    print("Şu anki sayı: \(number)")
                }
            }
        }
    }
}

// Preview yapılandırması, SwiftUI önizlemesi için kullanılır.
#Preview {
    BreakContinue()
}
