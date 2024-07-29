//
//  User.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.07.2024.
//

import Foundation

// Kullanıcı veri modeli
struct User: Identifiable {
    var id = UUID()
    var name: String
    var lastMessage: String
    var time: String
    var imageName: String
}
