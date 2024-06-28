//
//  Reactangle.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import Foundation

// MARK: BankAccountProtocol'ünü uygulayan bir standart hesap
class StandartBankAccount: BankAccountProtocol {
    var accountId: String = "1234"
    
    var balance: Double = 0.0
    
    func deposit(amount: Double) {
        balance += amount
        print("Yeni bakiyeniz: \(balance)")
    }
    
    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
            print("Yeni bakiyen: \(balance)")
        }
    }
}
