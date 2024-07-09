//
//  TextFieldExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 10.07.2024.
//

import SwiftUI

struct TextFieldExample: View {
    // Kullanıcıdan alınacak adı tutmak için değişken
    @State private var userName: String = "" // @State ile tanımladık çünkü bu değişken view'in durumunu yönetiyor

    var body: some View {
        VStack {
            // MARK: TextField Kullanımı
            TextField("Adınızı girin", text: $userName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                // @State kullanarak tanımlanan değişkeni binding yapısı ile TextField'a bağladık.
                // Bu sayede kullanıcı metin girişi yaptığında, userName değişkeni güncellenir.

            // MARK: Button Kullanımı
            Button {
                print("Düğmeye tıklandı: \(userName)")
            } label: {
                Text("Giriş Yap")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldExample()
}
