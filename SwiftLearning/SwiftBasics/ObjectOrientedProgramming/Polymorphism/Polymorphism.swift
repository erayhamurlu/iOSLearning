//
//  Polymorphism.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

// MARK: - Üst sınıf Vehicle
class Vehicle {
    func speed() -> String {
        return "Hız bilgisi yok"
    }
}

// MARK: - Alt sınıf Car
class Car: Vehicle {
    override func speed() -> String {
        return "Araba hızı: 120 km/h"
    }
}

// MARK: - Alt sınıf Bike
class Bike: Vehicle {
    override func speed() -> String {
        return "Bisiklet hızı: 25 km/h"
    }
}

// MARK: - PolymorphismView
struct PolymorphismView: View {
    var vehicles: [Vehicle] = [Car(), Bike()]
    
    var body: some View {
        VStack {
            ForEach(0..<vehicles.count, id: \.self) { index in
                Text(vehicles[index].speed())
                    .padding()
            }
        }
    }
}

// MARK: - Preview
#Preview {
    PolymorphismView()
}
