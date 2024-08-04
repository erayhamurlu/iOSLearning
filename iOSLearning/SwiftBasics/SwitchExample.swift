//
//  SwitchCase.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SwitchExample: View {
    // Gün değişkenini tanımlıyoruz ve Türkçe bir değer atıyoruz
    var day: String = "Pazartesi"

    var body: some View {
        VStack {
            // Switch ifadesi kullanarak haftanın gününü kontrol ediyoruz
            switch day {
            case "Pazartesi":
                Text("Haftanın ilk günü! Enerjinizi toplayın.")
            case "Salı":
                Text("İkinci gün, işler hızlanıyor.")
            case "Çarşamba":
                Text("Haftanın ortası geldi bile!")
            case "Perşembe":
                Text("Hafta sonu yaklaşıyor.")
            case "Cuma":
                Text("Cuma geldi! Haftanın son iş günü.")
            case "Cumartesi", "Pazar":
                Text("Hafta sonu! Dinlenme zamanı.")
            default:
                Text("Bilinmeyen bir gün.")
            }
        }
    }
}

#Preview {
    SwitchExample()
}
