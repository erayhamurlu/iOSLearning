//
//  Encapsulation.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

struct BankAccount {
    // Hesabın bakiyesini saklayan private değişken
    private var balance: Double = 0.0

    // Bakiyeyi döndüren public bir fonksiyon
    func getBalance() -> Double {
        return balance
    }

    // Bakiyeyi artıran public bir fonksiyon
    mutating func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
        }
    }

    // Bakiyeden para çeken public bir fonksiyon
    mutating func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
        }
    }
}

struct BankAccountView: View {
    @State private var account = BankAccount()
    @State private var amount: String = ""

    var body: some View {
        VStack {
            Text("Bakiye: \(account.getBalance())")
                .padding()

            TextField("Miktar", text: $amount)
                .padding()
                .keyboardType(.decimalPad)

            HStack {
                Button(action: {
                    if let amount = Double(amount) {
                        account.deposit(amount: amount)
                    }
                    amount = ""
                }) {
                    Text("Para Yatır")
                }
                .padding()

                Button(action: {
                    if let amount = Double(amount) {
                        account.withdraw(amount: amount)
                    }
                    amount = ""
                }) {
                    Text("Para Çek")
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    BankAccountView()
}
