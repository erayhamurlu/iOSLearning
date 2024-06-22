//
//  FunctionsWithParameters.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.06.2024.
//

import SwiftUI

struct FunctionsWithParameters: View {
    @State var studentList = ["Eray"]
    
    func addStudent(name: String) {
        studentList.append(name)
        print(studentList)
    }
    
    var body: some View {
        VStack {
            // MARK: - Kötü kod örneği
            // Her bir eleman eklemek için bir buton yaratıyorum.
            // Her bir eleman için studentList.append() fonksiyonunu çağırıyorum.
            // Listeye her eleman eklendikten sonra listeyi görebilmek için her öğe için print ekliyorum.
            Button("Add Ali") {
                studentList.append("Ali")
                print(studentList)
            }
            
            
            Button("Add Veli") {
                studentList.append("Veli")
                print(studentList)
            }
            
            
            Button("Add Ayse") {
                studentList.append("Ayse")
                print(studentList)
            }
            
            // MARK: - İyi kod örneği
            // addStudent fonksiyonunu çağırarak her bir öğrenciyi ekleyebilirim.
            Button("Add Eray") {
                addStudent(name: "Eray")
            }
            
            Button("Add Ali") {
                addStudent(name: "Ali")
            }
            
            Button("Add Veli") {
                addStudent(name: "Veli")
            }
        }
    }
}

#Preview {
    FunctionsWithParameters()
}
