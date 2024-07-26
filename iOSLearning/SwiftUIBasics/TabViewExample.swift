//
//  TabViewExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 24.07.2024.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            // MARK: - Ana Sayfa Sekmesi
            Text("Ana Sayfa")
                .tabItem {
                    Image(systemName: "house")
                    Text("Ana Sayfa")
                }
            
            // MARK: - Ara Sekmesi
            Text("Ara Sayfası")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Ara")
                }
            
            // MARK: - Profil Sekmesi
            Text("Profil Sayfası")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
    }
}

#Preview {
    TabViewExample()
}
