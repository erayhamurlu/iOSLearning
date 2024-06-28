//
//  BankAccount.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import Foundation

class BankAccount {
    // Özelliklerin dışarıdan direk olarak erişilmemesi için private olarak tanımlanır.
    private var balance: Double = 0.0

    // Public metodlarla kapsülleme sağlanır.
    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
        }
    }
    
    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
        }
    }
    
    func getBalance() -> Double {
        return balance
    }
}
