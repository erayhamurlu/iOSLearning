//
//  SimpleOOP.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.06.2024.
//

import SwiftUI

struct SimpleOOP: View {
    
    // MARK: - İyi kod örneği
    @State var studentList = [
        Student(name: "Eray", age: 24, gender: "Male", favoriteLesson: "Math")
    ]
    
    // MARK: - Kötü kod örneği
//    @State var nameList = ["Eray", "Ahmet", "Ayşe"]
//    @State var age = [25, 30, 35]

    
    var body: some View {
        VStack {
            // MARK: - Köyü kod örneği
            // MARK: ForEach
//            ForEach(nameList, id: \.self) { name in
//                Text(name)
//            }
//            
            // MARK: ForEach Age
//            ForEach(age, id: \.self) { age in
//                Text("\(age)")
//            }
            
            // MARK: - İyi kod örneği
            // MARK: ForEach Student
            ForEach(studentList, id: \.name) { student in
                Text(student.name)
                Text("\(student.age)")
            }
        }
    }
}

#Preview {
    SimpleOOP()
}
