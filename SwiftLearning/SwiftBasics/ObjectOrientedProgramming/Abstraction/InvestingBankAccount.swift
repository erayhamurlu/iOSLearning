//
//  InvestingBankAccount.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import Foundation

// MARK: BankAccountProtocol'ünü uygulayan bir yatırım hesabı
class InvestingBankAccount: BankAccountProtocol {
    var accountId: String = "1234"
    
    var balance: Double = 0.0
    
    var investment: Double = 0.0
    
    func invest(amount: Double) {
        if balance >= amount {
            balance -= amount
            investment += amount
            print("Yatırımınız yapıldı. Yatırımınız: \(investment)")
        }
    }
    
    func withdrawInvestment(amount: Double) {
        if investment >= amount {
            investment -= amount
            balance += amount
            print("Yatırımınızdan para çekildi. Yeni bakiyeniz: \(balance)")
        }
    }
    
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
