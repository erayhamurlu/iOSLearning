//
//  PolymorphismHomework.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 16.08.2024.
//

import SwiftUI

// MARK: - Polymorphism Example

// Temel bir ödeme yöntemi sınıfı oluşturuyoruz
class PaymentMethod {
    func processPayment() {
        print("Ödeme yöntemi işlenmedi.")
    }
}

// Kredi Kartı ödeme yöntemi sınıfı
class CreditCard: PaymentMethod {
    override func processPayment() {
        print("Kredi kartı ile ödeme işlemi yapıldı.")
    }
}

// Mobil Ödeme yöntemi sınıfı
class MobilePayment: PaymentMethod {
    override func processPayment() {
        print("Mobil ödeme ile ödeme işlemi yapıldı.")
    }
}

struct PolymorphismHomework: View {
    // Ödeme yöntemi nesnelerini oluşturuyoruz
    let creditCard = CreditCard()
    let mobilePayment = MobilePayment()
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                creditCard.processPayment() // Kredi kartı ile ödeme işlemi
            } label: {
                Text("Kredi Kartı ile Öde")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
            
            Button {
                mobilePayment.processPayment() // Mobil ödeme işlemi
            } label: {
                Text("Mobil Ödeme ile Öde")
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    PolymorphismHomework()
}
