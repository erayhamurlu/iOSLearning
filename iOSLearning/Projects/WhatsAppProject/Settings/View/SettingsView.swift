//
//  SettingsView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 2.08.2024.
//

import SwiftUI

// Ayarlar Ekranı Görünümü
struct SettingsView: View {
    // Ayar seçenekleri için diziler
    let profileOptions: [SettingsOption] = [
        SettingsOption(title: "Eray", iconName: "person.crop.circle")
    ]
    
    let generalOptions: [SettingsOption] = [
        SettingsOption(title: "Favoriler", iconName: "heart"),
        SettingsOption(title: "Toplu mesaj listeleri", iconName: "text.bubble"),
        SettingsOption(title: "Yıldızlı mesajlar", iconName: "star")
    ]
    
    let deviceOptions: [SettingsOption] = [
        SettingsOption(title: "Bağlı cihazlar", iconName: "desktopcomputer")
    ]
    
    let privacyOptions: [SettingsOption] = [
        SettingsOption(title: "Hesap", iconName: "person.crop.circle"),
        SettingsOption(title: "Gizlilik", iconName: "lock"),
        SettingsOption(title: "Sohbetler", iconName: "message"),
        SettingsOption(title: "Bildirimler", iconName: "bell"),
        SettingsOption(title: "Depolama ve veriler", iconName: "externaldrive")
    ]
    
    let supportOptions: [SettingsOption] = [
        SettingsOption(title: "Yardım", iconName: "questionmark.circle"),
        SettingsOption(title: "Arkadaşına Öner", iconName: "person.crop.circle.badge.plus")
    ]
    
    var body: some View {
        List {
            // Kullanıcı profil bölümü
            Section {
                HStack {
                    Image("ErayHamurlu")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Eray")
                            .font(.headline)
                        Text("The good life is built with good relationships.")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            // Genel ayarlar
            Section {
                ForEach(generalOptions, id: \.title) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        HStack {
                            Image(systemName: option.iconName)
                                .foregroundColor(.gray)
                            Text(option.title)
                        }
                    }
                }
            }
            
            // Cihaz ayarları
            Section {
                ForEach(deviceOptions, id: \.title) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        HStack {
                            Image(systemName: option.iconName)
                                .foregroundColor(.gray)
                            Text(option.title)
                        }
                    }
                }
            }
            
            // Gizlilik ve diğer ayarlar
            Section {
                ForEach(privacyOptions, id: \.title) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        HStack {
                            Image(systemName: option.iconName)
                                .foregroundColor(.gray)
                            Text(option.title)
                        }
                    }
                }
            }
            
            // Support Section
            Section {
                ForEach(supportOptions, id: \.title) { option in
                    HStack {
                        Image(systemName: option.iconName)
                            .foregroundColor(.gray)
                        Text(option.title)
                    }
                }
            }
        }
    }
}
#Preview {
    NavigationView {
        SettingsView()
        
    }
}

