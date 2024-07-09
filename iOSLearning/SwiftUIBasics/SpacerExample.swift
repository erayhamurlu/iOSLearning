//
//  SpacerExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 9.07.2024.
//

import SwiftUI

struct SpacingExample: View {
    var body: some View {
        VStack {
            // İlk Buton
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("Birinci Buton")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // Butonlar arasına boşluk ekliyoruz
            Spacer()
                .frame(height: 20)
            
            // İkinci Buton
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("İkinci Buton")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    SpacingExample()
}
