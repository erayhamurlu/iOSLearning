//
//  SwitchCase.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SwitchCase: View {
    var dayOfWeek: String = "Pazartesi" // Haftanın günlerinden biri

    var body: some View {
        VStack {
            // MARK: Gün değerine göre mesaj belirleme
            Text(messageForDay(dayOfWeek: dayOfWeek))
                .padding()
        }
    }

    // Haftanın gününe göre mesaj döndüren fonksiyon
    func messageForDay(dayOfWeek: String) -> String {
        switch dayOfWeek {
        case "Pazartesi":
            return "Haftanın başlangıcı, enerjik olun!"
        case "Salı":
            return "İkinci gün, hız kesmeden devam!"
        case "Çarşamba":
            return "Ortaya geldik, azimle çalış!"
        case "Perşembe":
            return "Perşembe, hafta sonuna az kaldı!"
        case "Cuma":
            return "Son iş günü, hafta sonu yaklaşıyor!"
        case "Cumartesi":
            return "Hafta sonu keyfi, iyi dinlen!"
        case "Pazar":
            return "Pazar, yeni haftaya hazırlık!"
        default:
            return "Geçersiz gün!"
        }
    }
}

#Preview {
    SwitchCase()
}
