//
//  Set.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SetExample: View {
    // MARK: - Ders Set'i
    // Öğrencinin aldığı dersleri temsil eden bir Set
    @State var courses: Set<String> = ["Matematik", "Fizik", "Kimya"]

    var body: some View {
        VStack {
            // MARK: - Dersleri Listeleme
            // Set içindeki dersleri ekranda listeliyoruz
            Text("Alınan Dersler:")
            ForEach(courses.sorted(), id: \.self) { course in
                Text(course)
            }
            
            // MARK: - Yeni Ders Ekleme Butonu
            // "Biyoloji" dersini Set'e ekleyen buton
            Button {
                courses.insert("Biyoloji")
            } label: {
                Text("Biyoloji Ekle")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // MARK: - Ders Çıkarma Butonu
            // "Fizik" dersini Set'ten çıkaran buton
            Button {
                courses.remove("Fizik")
            } label: {
                Text("Fizik Çıkar")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    SetExample()
}

