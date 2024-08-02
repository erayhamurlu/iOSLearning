//
//  MainView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 31.07.2024.
//

import SwiftUI

// Ana İçerik Görünümü
struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Güncellemeler")
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Güncellemeler")
                    }
                CallsView()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Aramalar")
                    }
                Text("Topluluklar")
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Topluluklar")
                    }
                ChatListView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Sohbetler")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Ayarlar")
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
