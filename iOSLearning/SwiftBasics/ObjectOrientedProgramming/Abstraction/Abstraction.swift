//
//  Abstraction.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//
import SwiftUI

// MARK: - Drivable Protokolü
protocol Drivable {
    func drive() -> String
}

// MARK: - Scooter Yapısı
struct Scooter: Drivable {
    // Değişkenler: Yapının üstünde tanımlandı
    var brand: String
    var model: String
    
    // MARK: - drive Metodu
    func drive() -> String {
        return "Scooter \(brand) \(model) sürülüyor."
    }
}

// MARK: - Bus Yapısı
struct Bus: Drivable {
    // Değişkenler: Yapının üstünde tanımlandı
    var brand: String
    var capacity: Int
    
    // MARK: - drive Metodu
    func drive() -> String {
        return "Otobüs \(brand) \(capacity) kişilik sürülüyor."
    }
}

// MARK: - ContentView
struct Abstraction: View {
    // Örnek değişkenler
    var scooter = Scooter(brand: "Xiaomi", model: "M365")
    var bus = Bus(brand: "Mercedes", capacity: 50)
    
    var body: some View {
        VStack {
            Text(scooter.drive())
            Text(bus.drive())
        }
    }
}

#Preview {
    Abstraction()
}
