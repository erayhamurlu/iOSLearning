//
//  Abstraction.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 28.06.2024.
//

import SwiftUI

// Transportable adında bir Protocol tanımlıyoruz
protocol Transportable {
    func transport()
}

// MARK: - Train struct'ı Transportable protokolünü uyguluyor
struct Train: Transportable {
    var model: String = "Hızlı Tren"
    
    // Transportable protokolünde tanımlanan transport fonksiyonunu uyguluyoruz
    func transport() {
        print("\(model) yolcu taşıyor 🚄")
    }
}

// MARK: - Boat struct'ı Transportable protokolünü uyguluyor
struct Boat: Transportable {
    var type: String = "Yolcu Gemisi"
    
    // Transportable protokolünde tanımlanan transport fonksiyonunu uyguluyoruz
    func transport() {
        print("\(type) denizde yolcu taşıyor 🚢")
    }
}

// ProtocolExample struct'ı görünümü sağlar
struct ProtocolExample: View {
    var body: some View {
        VStack {
            Button {
                let train = Train()
                train.transport()
            } label: {
                Text("Train taşısın")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }

            Button {
                let boat = Boat()
                boat.transport()
            } label: {
                Text("Boat taşısın")
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    ProtocolExample()
}
