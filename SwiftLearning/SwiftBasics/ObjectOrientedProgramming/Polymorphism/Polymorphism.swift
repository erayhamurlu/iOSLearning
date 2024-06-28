//
//  Polymorphism.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

struct Polymorphism: View {
    var bulldog = Dog()
    var cat = Cat()
    
    var body: some View {
        Button("Dog") {
            bulldog.makeSound()
        }
        
        Button("Cat") {
            cat.makeSound()
        }
    }
}

#Preview {
    Polymorphism()
}
