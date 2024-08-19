//
//  Polymorphism.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

// MARK: - Animal Sınıfı ve Alt Sınıflar
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() -> String {
        return "\(name) ses çıkarıyor"
    }
}

class Dog: Animal {
    override func makeSound() -> String {
        return "\(name) havlıyor"
    }
}

class Cat: Animal {
    override func makeSound() -> String {
        return "\(name) miyavlıyor"
    }
}

struct PolymorphismExample: View {
    let dog = Dog(name: "Köpek")
    let cat = Cat(name: "Kedi")
    
    var body: some View {
        VStack {
            Text(dog.makeSound())
            Text(cat.makeSound())
        }
    }
}

#Preview {
    PolymorphismExample()
}
