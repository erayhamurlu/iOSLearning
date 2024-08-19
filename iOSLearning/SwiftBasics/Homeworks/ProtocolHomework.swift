//
//  ProtocolHomework.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 19.08.2024.
//

import SwiftUI

// MARK: Swimmable protokolü, swim() fonksiyonunun desteklenmesini zorunlu kılıyor.
protocol Swimmable {
    func swim()
}

// Fish yapısı, Swimmable protokolünü uyguluyor ve swim() fonksiyonunu tanımlıyor.
struct Fish: Swimmable {
    var name: String = "Balık"
    
    func swim() {
        print("\(name) yüzüyor!")
    }
}

// Duck yapısı, Swimmable protokolünü uyguluyor ve swim() fonksiyonunu tanımlıyor.
struct Duck: Swimmable {
    var name: String = "Ördek"
    
    func swim() {
        print("\(name) gölette yüzüyor!")
    }
}

// ProtocolHomework görünümü, Fish ve Duck örneklerini oluşturuyor ve swim() fonksiyonlarını çağırıyor.
struct ProtocolHomework: View {
    var body: some View {
        VStack {
            Button {
                let fish = Fish()
                fish.swim()
                
                let duck = Duck()
                duck.swim()
            } label: {
                Text("Yüzmeye Başla")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    ProtocolHomework()
}
