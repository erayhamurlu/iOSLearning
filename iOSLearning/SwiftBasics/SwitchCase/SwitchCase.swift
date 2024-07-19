//
//  SwitchCase.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SwitchCase: View {
    @State var dayOfWeek: String = "Salı" // Haftanın günlerinden biri
    
    var body: some View {
        VStack {
            // MARK: Gün değerine göre mesaj belirleme
            Text(dayOfWeek)
                .padding()
            
            Button("Günü Güncelle") {
                switch dayOfWeek {
                    case "Pazartesi":
                        dayOfWeek = "Haftanın başlangıcı, enerjik olun!"
                    case "Salı":
                        dayOfWeek = "İkinci gün, hız kesmeden devam!"
                    case "Çarşamba":
                        dayOfWeek = "Ortaya geldik, azimle çalış!"
                    case "Perşembe":
                        dayOfWeek = "Perşembe, hafta sonuna az kaldı!"
                    case "Cuma":
                        dayOfWeek = "Son iş günü, hafta sonu yaklaşıyor!"
                    case "Cumartesi":
                        dayOfWeek = "Hafta sonu keyfi, iyi dinlen!"
                    case "Pazar":
                        dayOfWeek = "Pazar, yeni haftaya hazırlık!"
                    default:
                        dayOfWeek = "Geçersiz gün!"
                }
            }
        }
    }
}

#Preview {
    SwitchCase()
}
