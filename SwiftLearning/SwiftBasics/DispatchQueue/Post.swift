//
//  Post.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.06.2024.
//

import Foundation

// Post modelimizi tanımlıyoruz
struct Post: Identifiable, Decodable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
