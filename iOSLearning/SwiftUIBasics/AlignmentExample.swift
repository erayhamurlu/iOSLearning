//
//  AlignmentExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 7.07.2024.
//

import SwiftUI

struct AlignmentExample: View {
    let message1: String = "Merhaba SwiftUI!"
    let message2: String = "Align Center"
    let buttonTitle: String = "Devam Et"

    var body: some View {
        VStack {
            // MARK: Leading Alignment
            VStack(alignment: .leading) {
                Text(message1)
                    .font(.largeTitle)
                    .padding()
                
                Button {
                    print("Düğmeye tıklandı")
                } label: {
                    Text(buttonTitle)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            
            // MARK: Center Alignment
            VStack(alignment: .center) {
                Text(message2)
                    .font(.largeTitle)
                    .padding()
                
                Button {
                    print("Düğmeye tıklandı")
                } label: {
                    Text(buttonTitle)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            
            // MARK: Trailing Alignment
            VStack(alignment: .trailing) {
                Text(message1)
                    .font(.largeTitle)
                    .padding()
                
                Button {
                    print("Düğmeye tıklandı")
                } label: {
                    Text(buttonTitle)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
    }
}

#Preview {
    AlignmentExample()
}
