//
//  ContentView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Kursa Hoşgeldiniz! 🚀")
            .font(.largeTitle)
            .padding(20)
        
        Text("Simulatörde görmek istediğiniz örnek kodları iOSLearningApp içerisindeki ContentView() görünümünü değiştirerek erişebilirsiniz. 📱")
            .font(.title3)
            .padding(20)
        
        
        Text("Örneğin iOSLearningApp içerisindeki ContentView() yerine VStackExample() yazarak VStack örneğini görebilirsiniz. 📱")
            .font(.title3)
            .padding(20)
    }
}

#Preview {
    ContentView()
}
