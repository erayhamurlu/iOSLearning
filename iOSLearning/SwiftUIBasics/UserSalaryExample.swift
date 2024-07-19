//
//  UserSalaryExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 19.07.2024.
//

import SwiftUI

struct SalaryView: View {
    @State private var salary: String = ""
    @State private var displayedSalary: String = ""
    @State private var category: String = ""

    var body: some View {
        VStack {
            Text("Maaş Bilgisi Alma")
                .font(.largeTitle)
                .padding()

            TextField("Maaşınızı girin", text: $salary)
                .keyboardType(.decimalPad)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                displayedSalary = salary
                if let salaryValue = Double(salary) {
                    if salaryValue < 5000 {
                        category = "Fakir"
                    } else if salaryValue < 15000 {
                        category = "Orta"
                    } else {
                        category = "Zengin"
                    }
                } else {
                    category = "Geçersiz Değer"
                }
            }) {
                Text("Maaşı Göster")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            if !displayedSalary.isEmpty {
                Text("Girilen Maaş: \(displayedSalary)₺ - Durum: \(category)")
                    .font(.title)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    SalaryView()
}
