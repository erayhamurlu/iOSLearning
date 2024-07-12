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
            // MARK: İlk Text View'inin Frame Kullanımı ile Boyutlandırılması
            Text("Merhaba Dünya")
                .frame(width: 200, height: 50)
                .background(Color.green)
            
            // MARK: Spacer View'inin Frame Kullanımı ile Boyutlandırılması
            Spacer()
                .frame(height: 50)
            
            // MARK: İkinci Text View'inin Frame Kullanımı ile Boyutlandırılması
            Text("Hoş Geldiniz")
                .frame(width: 200, height: 50)
                .background(Color.blue)
        }
    }
}

#Preview {
    FrameExample()
}
