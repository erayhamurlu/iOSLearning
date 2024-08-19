//
//  InheritanceHomework.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 16.08.2024.
//

import SwiftUI

// MARK: - Üst sınıf: Appliance
class Appliance {
    var brand: String // Ev aletinin markası
    var model: String // Ev aletinin modeli
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func turnOn() {
        print("\(brand) \(model) çalışmaya başladı.")
    }
}

// MARK: - Alt sınıf: WashingMachine
class WashingMachine: Appliance {
    var loadCapacity: Int // Çamaşır makinesinin yük kapasitesi
    
    init(brand: String, model: String, loadCapacity: Int) {
        self.loadCapacity = loadCapacity
        super.init(brand: brand, model: model)
    }
    
    func startWashing() {
        print("\(brand) \(model), \(loadCapacity) kg kapasiteli çamaşır yıkamaya başladı.")
    }
}

// MARK: - Alt sınıf: Refrigerator
class Refrigerator: Appliance {
    var hasFreezer: Bool // Buzdolabında dondurucu var mı?
    
    init(brand: String, model: String, hasFreezer: Bool) {
        self.hasFreezer = hasFreezer
        super.init(brand: brand, model: model)
    }
    
    func coolDown() {
        let freezerText = hasFreezer ? "donduruculu" : "dondurucusuz"
        print("\(brand) \(model), \(freezerText) soğutma işlemi yapıyor.")
    }
}

struct InheritanceHomework: View {
    var body: some View {
        VStack(spacing: 20) {
            Button {
                let washer = WashingMachine(brand: "Bosch", model: "Maxx 6", loadCapacity: 7)
                washer.turnOn()
                washer.startWashing()
            } label: {
                Text("Çamaşır Makinesini Çalıştır")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }

            Button {
                let fridge = Refrigerator(brand: "Samsung", model: "RT50K", hasFreezer: true)
                fridge.turnOn()
                fridge.coolDown()
            } label: {
                Text("Buzdolabını Çalıştır")
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    InheritanceHomework()
}
