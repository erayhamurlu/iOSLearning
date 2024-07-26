//
//  UserSalaryExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 19.07.2024.
//

import SwiftUI

struct CountryIncomeHomework: View {
    @State private var annualIncome: String = ""
    @State private var displayedIncome: String = ""
    @State private var economy: String = ""

    var body: some View {
        VStack {
            Text("Ülke Yıllık Geliri Alma")
                .font(.largeTitle)
                .padding()

            TextField("Yıllık geliri girin (milyon $)", text: $annualIncome)
                .keyboardType(.decimalPad)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                displayedIncome = annualIncome
                if let incomeValue = Double(annualIncome) {
                    if incomeValue < 10000 {
                        economy = "Az Gelişmiş Ekonomi"
                    } else if incomeValue < 50000 {
                        economy = "Gelişmekte Olan Ekonomi"
                    } else {
                        economy = "Gelişmiş Ekonomi"
                    }
                } else {
                    economy = "Geçersiz Değer"
                }
            }) {
                Text("Geliri Göster")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            if !displayedIncome.isEmpty {
                Text("Girilen Yıllık Gelir: \(displayedIncome) milyon $ - Ekonomi Durumu: \(economy)")
                    .font(.title)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    CountryIncomeHomework()
}
