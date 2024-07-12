//
//  CustomView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 10.07.2024.
//

import SwiftUI

// MARK: Özelleştirilmiş Buton Widget'ı
struct CustomButton: View {
    @Binding var message: String
    var buttonTitle: String

    var body: some View {
        Button {
            // Butona tıklandığında mesajı değiştirir
            message = "Düğmeye tıklandı"
        } label: {
            Text(buttonTitle)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

struct CustomWidgetExample: View {
    // Değişken isimleri İngilizce, değerler Türkçe!
    @State private var buttonTitle: String = "Butona Tıkla"
    @State private var message: String = ""

    var body: some View {
        VStack {
            Text(message)
                .padding()
                .font(.title)

            // Özelleştirilmiş Buton Widget'ını kullanma
            CustomButton(message: $message, buttonTitle: buttonTitle)
        }
        .padding()
    }
}

#Preview {
    CustomWidgetExample()
}
