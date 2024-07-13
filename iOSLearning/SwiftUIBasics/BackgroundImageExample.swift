//
//  BackgroundImageExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 13.07.2024.
//

import SwiftUI

struct BackgroundImageExample: View {
    var body: some View {
        ZStack {
            Image("Cook2")
            
            VStack {
                Text("Text1")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding()
                
                Text("Text2")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

#Preview {
    BackgroundImageExample()
}
