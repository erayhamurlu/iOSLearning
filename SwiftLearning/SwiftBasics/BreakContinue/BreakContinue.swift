//
//  BreakContinue.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import Foundation
import SwiftUI

struct BreakContinue: View {
    // Dizideki sayılar
    let numbers = [5, 8, 12, 9, 20, 25, 14, 7]
    
    var body: some View {
        VStack {
            Button("Detect Numbers") {
                detectNumber()
            }
        }
    }
    
    
    func detectNumber()  {
        for number in numbers {
            if number > 20 {
                print("20 sayısı bulundu")
                break
            }
            
            if number < 10 {
                print("10'dan küçük sayılar: \(number)")
                continue
            }
            
            print("Şu anki sayı: \(number)")
        }
    }
}

#Preview {
    BreakContinue()
}
