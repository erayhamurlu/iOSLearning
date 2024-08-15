//
//  SimpleOOP.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

// MARK: - Person Sınıfı
class Person {
    var name: String = "Ahmet"
    var age: Int = 25
    
    // MARK: - Yaşı Bir Yıl Arttıran Metot
//    func haveBirthday() {
//        age += 1
//    }
}































//#Preview {
//    DetailView3(name: "Ahmet", age: 22, gender: "Erkek", job: "Developer", eyeColor: "Brown", hairColor: "Black", height: 180, weight: 80, person: Person)
//}

class Human {
    var name: String = "Ahmet"
    var age: Int = 25
    var gender: String = "Erkek"
    var eyeColor: String = "Brown"
    var hairColor: String = "Black"
    var height: Int = 180
    var weight: Int = 80
}

class Engineer: Human {
    var job: String = "Developer"
}


// MARK: - ContentView
struct SimpleOOP: View {
    // Person nesnesi oluşturuluyor
//    @State private var person = Person(name: "Ahmet", age: 25)
    var human = Human()
    var engineer = Engineer()
    
    
    var body: some View {
            VStack {
                
                Text("İnsan Kaydı")
                    .font(.title)
                Text(human.name)
                Text("\(human.age)")
                Text(human.gender)
//                Text(human.job)
                Text(human.eyeColor)
                Text(human.hairColor)
                Text("\(human.height)")
                Text("\(human.weight)")
                
                Divider()

                Text(engineer.name)
                Text("\(engineer.age)")
                Text(engineer.gender)
                Text(engineer.job)
                Text(engineer.eyeColor)
                Text(engineer.hairColor)
                Text("\(engineer.height)")
                Text("\(engineer.weight)")
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //            Text("Name: \(person.name)") // İsmi göster
                //            Text("Age: \(person.age)")   // Yaşı göster
                //            Button(action: {
                //                person.haveBirthday() // Yaşı bir yıl arttır
                //            }) {
                //                Text("Happy Birthday!")
                //            }
            }
        .padding()
    }
}

#Preview {
    SimpleOOP()
}
