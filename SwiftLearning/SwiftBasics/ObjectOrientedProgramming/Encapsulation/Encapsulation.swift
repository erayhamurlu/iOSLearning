//
//  Encapsulation.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

struct Encapsulation: View {
    var bankAccount = BankAccount()
    
    var body: some View {
        Button("Check Balance") {
            print(bankAccount.getBalance())
        }
        
        Button("Deposit") {
            bankAccount.deposit(amount: 100)
            print(bankAccount.getBalance())
        }
        
        Button("Withdraw") {
            bankAccount.withdraw(amount: 50)
            print(bankAccount.getBalance())
        }
    }
}

#Preview {
    Encapsulation()
}
