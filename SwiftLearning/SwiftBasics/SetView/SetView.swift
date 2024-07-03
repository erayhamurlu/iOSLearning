//
//  Set.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

struct SetView: View {
    
    @State var numberSetList: Set<Int> = [1, 2, 3, 4, 5]
    
    @State var numberArrayList: [Int] = [1, 2, 3, 4, 5]
    
    var body: some View {
        VStack(content: {
            Text("Hello, World!")
            
            Button("Show Numbers") {
                showNumbers()
            }
            
            Button("Show Numbers Array") {
                showNumbersArray()
            }
            
            Button("addItem") {
                numberSetList.insert(6)
                numberArrayList.append(6)
            }
        })
    }
    
    func showNumbers() {
        for number in numberSetList {
            print(number)
        }
    }
    
    func showNumbersArray() {
        for number in numberArrayList {
            print(number)
        }
    }
}

#Preview {
    SetView()
}
