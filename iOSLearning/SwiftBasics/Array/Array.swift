//
//  Array.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct Array: View {
    // MARK: Öğrenci isimlerini saklayan array
    @State private var studentNames: [String] = ["Ahmet", "Mehmet", "Ayşe", "Fatma"]

    var body: some View {
        VStack {
            Text("Öğrenci İsimleri")
                .font(.largeTitle)
                .padding()
            
            Text(studentNames[3])

            // MARK: Array içeriğini listeleme
            List(studentNames, id: \.self) { name in
                Text(name)
            }
            
            Button(action: addStudent) {
                Text("Öğrenci Ekle")
            }
            .padding()

            Button(action: removeStudent) {
                Text("Öğrenci Sil")
            }
            .padding()

            Button(action: sortStudents) {
                Text("İsimleri Sırala")
            }
            .padding()
        }
    }

    // MARK: Array'e yeni bir isim ekleme
    func addStudent() {
        studentNames.append("Kemal") // Yeni öğrenci ismi ekliyoruz
    }

    // MARK: Array'den bir ismi silme
    func removeStudent() {
        if let index = studentNames.firstIndex(of: "Mehmet") {
            studentNames.remove(at: index) // 'Mehmet' ismini siliyoruz
        }
    }

    // MARK: Array'i alfabetik sıraya göre sıralama
    func sortStudents() {
        studentNames.sort() // İsimleri alfabetik olarak sıralıyoruz
    }
}

#Preview {
    Array()
}
