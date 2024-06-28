//
//  Shape.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import Foundation

protocol BankAccountProtocol {
    var accountId: String { get set }
    var balance: Double { get set }
    func deposit(amount: Double)
    func withdraw(amount: Double)
}
