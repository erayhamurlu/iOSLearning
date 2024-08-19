//
//  SimpleOOP.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

struct ClassExample: View {
    
    // MARK: - Kullanıcı sınıfı tanımı
    class User {
        var name: String // Kullanıcının adı
        var age: Int // Kullanıcının yaşı
        
        // MARK: - Yapılandırıcı (init) fonksiyonu
        init(name: String, age: Int) {
            self.name = name // Kullanıcının adı atanıyor
            self.age = age // Kullanıcının yaşı atanıyor
        }
        
        // MARK: - Kullanıcıya selam veren fonksiyon
        func greet() {
            print("Merhaba, ben \(name) ve \(age) yaşındayım!")
        }
    }
    
    let user = User(name: "Ahmet", age: 25) // Ahmet adında bir kullanıcı oluşturuyoruz.
    
    var body: some View {
        VStack {
            Text("User: \(user.name)")
            Text("Age: \(user.age)")
            Button {
                user.greet()
            } label: {
                Text("Greet User")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    ClassExample()
}
