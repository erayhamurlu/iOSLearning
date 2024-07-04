//
//  GuardExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct GuardExample: View {
    var body: some View {
        Text(verifyAge(age: -5) ?? "Geçersiz yaş")
            .padding()
    }
    
    func verifyAge(age: Int?) -> String? {
        // MARK: Yaş değeri boş mu kontrolü
        guard let validAge = age else {
            // Yaş değeri boşsa erken çıkış yap
            print("Yaş değeri boş olamaz.")
            return nil
        }
        
        // MARK: Yaş değeri negatif mi kontrolü
        guard validAge >= 0 else {
            // Negatif yaş değeri için erken çıkış yap
            print("Yaş değeri negatif olamaz: \(validAge)")
            return nil
        }
        
        // Yaş değeri geçerliyse devam et
        return "Geçerli yaş: \(validAge)"
    }
}

#Preview {
    GuardExample()
}
