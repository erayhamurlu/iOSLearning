//
//  Inheritance.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

// MARK: Temel sınıf olan Vehicle'ı tanımlıyoruz
class Vehicle {
    var type: String = "Taşıt"

    func move() {
        print("\(type) hareket ediyor.")
    }
}

// MARK: Vehicle sınıfından miras alan Car sınıfı
class Car: Vehicle {
    var model: String = "BMW"
}

struct InheritanceExample: View {
    // MARK: Car sınıfından bir örnek oluşturuyoruz
    var myCar = Car()

    var body: some View {
        VStack {
            Text("Vehicle Type: \(myCar.type)")
                .font(.title)
            
            Text("Car Model: \(myCar.model)")
                .font(.headline)
            
            Button {
                myCar.move()
            } label: {
                Text("Hareket Ettir")
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    InheritanceExample()
}
