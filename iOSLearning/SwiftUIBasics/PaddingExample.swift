//
//  PaddingExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 9.07.2024.
//

import SwiftUI

struct PaddingExample: View {
    var body: some View {
        VStack {
            // MARK: Buton
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("Tıkla")
                    .padding() // Butona padding ekleniyor
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding() // Tüm VStack'e padding ekleniyor
    }
}

#Preview {
    PaddingExample()
}
