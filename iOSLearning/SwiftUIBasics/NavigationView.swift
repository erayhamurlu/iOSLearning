//
//  NavigationView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 19.07.2024.
//

import SwiftUI

struct NavigationViewExample: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Makarna") {
                    Text("Makarna Detay Sayfası")
                } // NavigationLink Bir bağlantı oluşturur ve tıklandığında belirtilen hedef görünüme gider. Örneğin, "Makarna" bağlantısına tıklandığında "Makarna Detay Sayfası" gösterilir.
                
                NavigationLink("Detay Sayfası") {
                    DetailView()
                }
            }
            .navigationTitle("Ana Sayfa")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detay Sayfası 1")
            
            NavigationLink("Detay Sayfası 2'yi Göster") {
                DetailView2()
            }
        }
        .navigationTitle("Detay Sayfası 1")
    }
}

struct DetailView2: View {
    var body: some View {
        Text("Detay Sayfası 2")
            .navigationTitle("Detay Sayfası 2")
    }
}

#Preview {
    NavigationViewExample()
}
