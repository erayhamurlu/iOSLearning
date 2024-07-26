//
//  FoodListExample2.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.07.2024.
//

import SwiftUI

struct FoodListNavigationHomework: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    FoodDetailView(itemName: "Chocolate hearts", itemPrice: "$1.55", itemCalories: "270 cal")
                } label: {
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
                }
                
                NavigationLink {
                    FoodDetailView(itemName: "M&M cookies", itemPrice: "$2.35", itemCalories: "300 cal")
                } label: {
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
                }
                
                NavigationLink {
                    FoodDetailView(itemName: "Valentines cookies", itemPrice: "$3.35", itemCalories: "250 cal")
                } label: {
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
    }
}

struct FoodDetailView: View {
    var itemName: String
    var itemPrice: String
    var itemCalories: String

    var body: some View {
        VStack {
            Text(itemName)
                .font(.largeTitle)
                .padding()
            Text(itemPrice)
                .font(.title)
                .padding()
            Text(itemCalories)
                .font(.title2)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    FoodListNavigationHomework()
}
