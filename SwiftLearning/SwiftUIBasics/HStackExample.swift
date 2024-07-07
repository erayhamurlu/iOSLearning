//
//  HStackExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct HStackExample: View {
    let greeting = "Merhaba" // bir karşılama mesajı
    let world = "Dünya" // Dünya kelimesi
    let framework = "SwiftUI" // SwiftUI framework ismi

    var body: some View {
        HStack {
            Text(greeting)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            Text(world)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            Text(framework)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    HStackExample()
}
