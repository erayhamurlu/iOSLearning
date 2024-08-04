//
//  ArrayOperationsExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.08.2024.
//

import SwiftUI

struct ArrayOperationsExample: View {
    // Görev listesi, başlangıçta birkaç Türkçe görev içerir.
    @State var taskList: [String] = ["Alışveriş Yap", "Swift Çalış", "Egzersiz Yap"]
    
    var body: some View {
        VStack {
            // Görevler ForEach ile gösteriliyor
            ForEach(taskList, id: \.self) { task in
                Text(task)
            }
            
            // Yeni görev ekleme butonu
            Button {
                taskList.append("Kitap Oku") // "Kitap Oku" görevini ekler
            } label: {
                Text("Görev Ekle")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // Seçilen görevi çıkarma butonu
            Button {
                if !taskList.isEmpty {
                    taskList.removeLast() // En son eklenen görevi çıkarma işlemi
                }
            } label: {
                Text("Son Görevi Çıkar")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ArrayOperationsExample()
}
