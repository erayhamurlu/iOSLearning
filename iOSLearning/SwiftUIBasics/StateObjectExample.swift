//
//  StateObjectExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 8.08.2024.
//

import SwiftUI

// MARK: - ObservableObject tanımı
class CounterViewModel: ObservableObject {
    // @Published ile sayaç değişkeni
    @Published var count: Int = 0
    
    // Sayacı artıran fonksiyon
    func incrementCounter() {
        count += 1
    }
}

// MARK: - @StateObject kullanım örneği
struct StateObjectExample: View {
    // @StateObject tanımı
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            // Sayaç değeri görüntüleme
            Text("Sayaç: \(viewModel.count)")
            
            // Sayaç artırma butonu
            Button {
                // Düğmeye tıklandığında sayaç artır
                viewModel.incrementCounter()
            } label: {
                Text("Artır")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

// MARK: - SwiftUI Preview
#Preview {
    StateObjectExample()
}
