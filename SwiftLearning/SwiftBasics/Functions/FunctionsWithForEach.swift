//
//  FunctionsWithForEach.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

struct FunctionsWithForEach: View {
    
    @State var buttonList = ["Ahmet Ekle", "Mehmet Ekle", "Ayşe Ekle"]
    
    @State var studentList = ["Eray"]
    
    func addStudent(name: String) {
        studentList.append(name)
        print(studentList)
    }
    
    var body: some View {
        VStack{
            // Öğrenci listesine ekrana yazdırmak için.
            ForEach(studentList, id: \.self) { student in
                Text(student)
            }
            
            // MARK: - İyi kod örneği
            // Burada buton listesindeki her öğe için bir Buton yazmak yerine listeyi for döngüsü ile dönerek her bir öğe için bir buton oluşturuyorum.
            ForEach(buttonList, id: \.self) { student in
                Button("\(student)") {
                    addStudent(name: student)
                }
            }
            
            // MARK: - Kötü kod örneği
            // Her bir eleman eklemek için bir buton yaratıyorum.
            // Her bir eleman için addStudent() fonksiyonunu yazıyorum.
            Button("Ahmet Ekle") {
                addStudent(name: "Ahmet")
            }
            
            Button("Mehmet Ekle") {
                addStudent(name: "Mehmet")
            }
            
            Button("Ayşe Ekle") {
                addStudent(name: "Ayşe")
            }
            
            Button("Eray Ekle") {
                addStudent(name: "Eray")
            }
        }
    }
}

#Preview {
    FunctionsWithForEach()
}
