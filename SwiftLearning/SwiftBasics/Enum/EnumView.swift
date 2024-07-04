//
//  EnumView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 3.07.2024.
//

import SwiftUI

// MARK: - Hava durumunu temsil eden bir enum
enum WeatherCondition {
    case sunny
    case rainy
    case snowy
    
    var emoji: String {
        switch self {
        case .sunny:
            return "☀️" // Güneşli
        case .rainy:
            return "🌧️" // Yağmurlu
        case .snowy:
            return "❄️" // Karlı
        }
    }
}

// SwiftUI View'da enum durumlarının kullanımı
struct EnumView: View {
    @State private var currentWeather: WeatherCondition = .sunny
    
    var body: some View {
        VStack {
            Text(currentWeather.emoji)
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: {
                    currentWeather = .sunny
                }) {
                    Text("☀️") // Güneşli
                }
                .padding()
                
                Button(action: {
                    currentWeather = .rainy
                }) {
                    Text("🌧️") // Yağmurlu
                }
                .padding()
                
                Button(action: {
                    currentWeather = .snowy
                }) {
                    Text("❄️") // Karlı
                }
                .padding()
            }
        }
    }
}

#Preview {
    EnumView()
}
