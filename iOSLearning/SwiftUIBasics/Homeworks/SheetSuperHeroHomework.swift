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
    @State var showSupermanSheet = false
    @State var showBatmanSheet = false
    @State var showWonderWomanSheet = false

    var body: some View {
        NavigationView {
            VStack {
                // Superman Butonu
                Button {
                    self.showSupermanSheet = true
                } label: {
                    HStack {
                        Image("Superman")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        Text("Superman")
                            .padding()
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(50)
                }
                .sheet(isPresented: $showSupermanSheet) {
                    SuperheroDetailView(name: "Superman", description: "The Man of Steel", superpower: "Super strength, flight, x-ray vision", imageName: "Superman")
                }

                // Batman Butonu
                Button {
                    self.showBatmanSheet = true
                } label: {
                    HStack {
                        Image("Batman")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        Text("Batman")
                            .padding()
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(50)
                }
                .sheet(isPresented: $showBatmanSheet) {
                    SuperheroDetailView(name: "Batman", description: "The Dark Knight", superpower: "Exceptional martial artist, combat strategy, inexhaustible wealth", imageName: "Batman")
                }

                // Wonder Woman Butonu
                Button {
                    self.showWonderWomanSheet = true
                } label: {
                    HStack {
                        Image("WonderWoman")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        Text("Wonder Woman")
                            .padding()
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.red)
                    .cornerRadius(50)
                }
                .sheet(isPresented: $showWonderWomanSheet) {
                    SuperheroDetailView(name: "Wonder Woman", description: "The Amazonian Princess", superpower: "Superhuman strength, speed, agility, durability, flight", imageName: "WonderWoman")
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
    var imageName: String

    var body: some View {
        VStack {
            // Kahraman Resmi
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .padding()
            
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
