//
//  PhoneAuthViewModel.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.08.2024.
//


import Foundation
import FirebaseAuth

class PhoneAuthViewModel: ObservableObject {
    @Published var phoneAuthModel = PhoneAuthModel() // Model verileri
    @Published var registrationSuccess: Bool = false // Kayıt durumu

    // Kullanıcının telefon numarası ile Firebase'e kaydolmasını sağlayan fonksiyon
    func registerWithPhoneNumber() {
        let phoneNumber = "+90\(phoneAuthModel.phoneNumber)" // Türkiye için örnek numara formatı

        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
            if let error = error {
                print("Hata: \(error.localizedDescription)") // Hata durumunda mesaj yazdır
                return
            }

            self.registrationSuccess = true // Başarılı kayıt
            print("Kullanıcı kaydı başarılı.")
        }
    }
}
