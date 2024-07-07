//
//  Set.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SetView: View {
    // MARK: Set tanımlama ve değer atama
    @State private var studentNames: Set<String> = ["Ahmet", "Mehmet", "Ayşe", "Fatma"]

    var body: some View {
        VStack {
            Text("Öğrenci İsimleri")
                .font(.largeTitle)
                .padding()

            ForEach(studentNames.sorted(), id: \.self) { name in
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
        }
    }

    // MARK: Set'e yeni bir isim ekleme
    func addStudent() {
        studentNames.insert("Kemal")
        // Yeni öğrenci ismi ekliyoruz
        // Aynı öğeden 1 den fazla ekleyemeyiz.
    }

    // MARK: Set'ten bir ismi silme
    func removeStudent() {
        studentNames.remove("Mehmet") // 'Mehmet' ismini siliyoruz
    }
}

#Preview {
    SetView()
}

