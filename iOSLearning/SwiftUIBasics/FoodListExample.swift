//
//  FoodListExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 12.07.2024.
//

import SwiftUI

struct FoodListExample: View {
    var body: some View {
        List {
            HStack {
                Image("Cook1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                VStack(alignment: .leading) {
                    Text("Chocolate hearts")
                        .font(.headline)
                    Text("$1.55 | 270 cal")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    print("Details tapped!")
                }) {
                    Text("Show details")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            
            HStack {
                Image("Cook2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                VStack(alignment: .leading) {
                    Text("M&M cookies")
                        .font(.headline)
                    Text("$2.35 | 300 cal")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    print("Details tapped!")
                }) {
                    Text("Show details")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            
            HStack {
                Image("Cook3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                VStack(alignment: .leading) {
                    Text("Valentines cookies")
                        .font(.headline)
                    Text("$3.35 | 250 cal")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Button(action: {
                    print("Details tapped!")
                }) {
                    Text("Show details")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    FoodListExample()
}
