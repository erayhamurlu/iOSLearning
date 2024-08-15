//
//  EnumView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

// Kullanıcının durumlarını temsil eden enumeration
enum UserStatus {
    case online // Kullanıcı çevrimiçi
    case offline // Kullanıcı çevrimdışı
    case busy // Kullanıcı meşgul
}

struct EnumerationExample: View {
    // Kullanıcının mevcut durumunu temsil eden değişken
    var userStatus: UserStatus = .online

    var body: some View {
        VStack {
            // Kullanıcının durumuna göre farklı bir mesaj gösteriliyor
            switch userStatus {
            case .online:
                Text("Kullanıcı Çevrimiçi")
            case .offline:
                Text("Kullanıcı Çevrimdışı")
            case .busy:
                Text("Kullanıcı Meşgul")
            }
        }
    }
}

#Preview {
    EnumerationExample()
}
