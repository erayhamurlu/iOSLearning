//
//  Inheritance.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

// MARK: - Temel Hayvan Sınıfı
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        // Bu metod alt sınıflar tarafından geçersiz kılınacak
    }
}

// MARK: - Köpek Sınıfı
class Dog: Animal {
    var breed: String
    
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
    
    override func makeSound() {
        print("\(name) havlıyor")
    }
}

// MARK: - Kedi Sınıfı
class Cat: Animal {
    var color: String
    
    init(name: String, color: String) {
        self.color = color
        super.init(name: name)
    }
    
    override func makeSound() {
        print("\(name) miyavlıyor")
    }
}

// MARK: - SwiftUI Görünümü
struct AnimalView: View {
    @State private var dog = Dog(name: "Karabaş", breed: "Kangal")
    @State private var cat = Cat(name: "Tekir", color: "Gri")
    
    var body: some View {
        VStack {
            Text("Animals")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                dog.makeSound()
            }) {
                Text("Köpek Sesi Çıkar")
            }
            
            Button(action: {
                cat.makeSound()
            }) {
                Text("Kedi Sesi Çıkar")
            }
        }
    }
}

#Preview {
    AnimalView()
}
