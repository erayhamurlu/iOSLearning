//
//  SimpleOOP.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

// MARK: - Person Sınıfı
class Person {
    var name: String
    var age: Int
    
    // init, sınıfın bir nesnesi oluşturulduğunda çalışan yapıcı (constructor) metodudur.
    // Bu metod, nesnenin başlangıç değerlerini belirlemek için kullanılır.
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // MARK: - Yaşı Bir Yıl Arttıran Metot
    func haveBirthday() {
        age += 1
    }
}

// MARK: - ContentView
struct SimpleOOP: View {
    // Person nesnesi oluşturuluyor
    @State private var person = Person(name: "Ahmet", age: 25)
    
    var body: some View {
        VStack {
            Text("Name: \(person.name)") // İsmi göster
            Text("Age: \(person.age)")   // Yaşı göster
            Button(action: {
                person.haveBirthday() // Yaşı bir yıl arttır
            }) {
                Text("Happy Birthday!")
            }
        }
        .padding()
    }
}

#Preview {
    SimpleOOP()
}
