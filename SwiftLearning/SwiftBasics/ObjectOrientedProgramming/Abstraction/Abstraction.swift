//
//  Abstraction.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

struct Abstraction: View {
    // MARK: Burada BankAccountProtocol'ü uygulayan herhangi bir class'ı alabiliriz.
    var bankAccount: BankAccountProtocol
    
    var body: some View {
        // MARK: - Burada bankAccount'ın hangi class olduğu ile ilgilenmeyiz. Sadece protocol'ü uygulayıp uygulamadığına bakarız.
        VStack {
            Text("Hesap ID: \(bankAccount.accountId)")
            
            Button("Hesaptaki Bakiyem") {
                print("Bakiyeniz: \(bankAccount.balance)")
            }
            
            Button(action: {
                bankAccount.deposit(amount: 100)
            }) {
                Text("Para Yatır")
            }
            
            Button(action: {
                bankAccount.withdraw(amount: 50)
            }) {
                Text("Para Çek")
            }
        }
    
    }
}

#Preview {
    //MARK: - Buradaki View gelen class'ın ne olduğu ile ilgilenmez sadece istediği protocol'e uygunluğunu kontrol eder.
//    Abstraction(bankAccount: StandartBankAccount())
    Abstraction(bankAccount: InvestingBankAccount())
}
