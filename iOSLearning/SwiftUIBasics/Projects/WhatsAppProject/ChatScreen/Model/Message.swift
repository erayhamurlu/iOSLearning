//
//  Message.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.07.2024.
//

import Foundation

// Mesaj veri modeli
struct Message: Identifiable {
    var id = UUID()
    var text: String
    var isSent: Bool
}
