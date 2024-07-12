//
//  HStackExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack {
            Text("Merhaba!")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            
            Text("Dünya")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            
            Text("SwiftUI!")
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    HStackExample()
}
