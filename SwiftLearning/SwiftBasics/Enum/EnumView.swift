//
//  EnumView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

// MARK: - Trafik ışığını temsil eden bir enum
enum TrafficLight: String {
    case red
    case yellow
    case green
}

enum AppText {
    case Login
    case Register
}

// MARK: - Trafik ışığının durumuna göre mesaj döndüren fonksiyon
//func trafficLightMessage(for light: TrafficLight) -> String {
//    switch light {
//    case .red:
//        return "Dur"
//    case .yellow:
//        return "Hazırlan"
//    case .green:
//        return "Geç"
//    }
//}

struct EnumView: View {
    
    @State var trafficLight: TrafficLight = .yellow
    
    var appText: AppText = .Login
    
    var body: some View {
        
        VStack {
            Text("Trafik Işıkları")
                .font(.largeTitle)
                .padding()
            
            Button("Action") {
                if appText == .Login {
                    print("Login")
                } else {
                    print("Giriş Yap")
                }
            }
        }
    }
}

#Preview {
    EnumView()
}
