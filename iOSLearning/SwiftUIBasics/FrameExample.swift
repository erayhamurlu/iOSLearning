//
//  FrameExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 9.07.2024.
//

import SwiftUI

struct FrameExample: View {
    var body: some View {
        VStack {
            // MARK: Text View'inin Frame Kullanımı ile Boyutlandırılması
            Text("Merhaba Dünya")
                .frame(width: 200, height: 50)
                .background(Color.gray)
            
            // MARK: Button View'inin Frame Kullanımı ile Boyutlandırılması
            Button {
                print("Düğmeye tıklandı")
            } label: {
                Text("Butona Bas")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .frame(width: 150, height: 50)
        }
    }
}

#Preview {
    FrameExample()
}
