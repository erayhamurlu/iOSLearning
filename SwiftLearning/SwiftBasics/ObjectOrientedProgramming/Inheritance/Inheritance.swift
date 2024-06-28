//
//  Inheritance.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

struct Inheritance: View {
    let mercedesCoupe = MercedesCoupe()
    
    var body: some View {
        Button("change car door") {
            print(mercedesCoupe.vehicleDoor)
            mercedesCoupe.vehicleDoor = 2
            print(mercedesCoupe.vehicleDoor)
        }
        
        Button("move") {
            mercedesCoupe.move()
        }
    }
}

#Preview {
    Inheritance()
}
