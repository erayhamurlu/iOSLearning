//
//  SheetExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.07.2024.
//

import SwiftUI

// MARK: - Ana Görünüm Yapısı
struct SheetSuperHeroHomework: View {
    // MARK: - Durum Değişkenleri
    @State private var showSupermanSheet = false
    @State private var showBatmanSheet = false
    @State private var showWonderWomanSheet = false

    var body: some View {
        NavigationView {
            VStack {
                // Superman Butonu
                Button {
                    self.showSupermanSheet = true
                } label: {
                    Text("Superman")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showSupermanSheet) {
                    SuperheroDetailView(name: "Superman", description: "The Man of Steel", superpower: "Super strength, flight, x-ray vision")
                }

                // Batman Butonu
                Button {
                    self.showBatmanSheet = true
                } label: {
                    Text("Batman")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showBatmanSheet) {
                    SuperheroDetailView(name: "Batman", description: "The Dark Knight", superpower: "Exceptional martial artist, combat strategy, inexhaustible wealth")
                }

                // Wonder Woman Butonu
                Button {
                    self.showWonderWomanSheet = true
                } label: {
                    Text("Wonder Woman")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showWonderWomanSheet) {
                    SuperheroDetailView(name: "Wonder Woman", description: "The Amazonian Princess", superpower: "Superhuman strength, speed, agility, durability, flight")
                }
            }
            .navigationTitle("Superheroes")
        }
    }
}

// MARK: - Süper Kahraman Detay Görünümü Yapısı
struct SuperheroDetailView: View {
    var name: String
    var description: String
    var superpower: String

    var body: some View {
        VStack {
            // Kahraman Adı
            Text(name)
                .font(.largeTitle)
                .padding()

            // Kahraman Açıklaması
            Text(description)
                .font(.title)
                .padding()

            // Süper Güçler
            Text("Superpowers: \(superpower)")
                .font(.title2)
                .padding()
        }
    }
}

// MARK: - Önizleme
#Preview {
    SheetSuperHeroHomework()
}
