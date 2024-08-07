//
//  PhoneAuthView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.08.2024.
//



import SwiftUI

struct PhoneAuthView: View {
    @StateObject private var viewModel = PhoneAuthViewModel() // ViewModel'den örnek
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Telefon Numarası", text: $viewModel.phoneAuthModel.phoneNumber)
                .keyboardType(.phonePad)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            // Kayıt butonu
            Button {
                viewModel.registerWithPhoneNumber() // Kayıt işlemi
            } label: {
                Text("Kayıt Ol")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if viewModel.registrationSuccess {
                Text("Kayıt Başarılı!")
                    .foregroundColor(.green)
            } else {
                Text("Kayıt Başarısız. Lütfen tekrar deneyin.")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    PhoneAuthView()
}
