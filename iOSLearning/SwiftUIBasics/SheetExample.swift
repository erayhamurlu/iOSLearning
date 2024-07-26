//
//  SheetExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.07.2024.
//

import SwiftUI

struct SheetExample: View {
    @State private var isSheetPresented: Bool = false

    var body: some View {
        VStack {
            Button {
                // Düğmeye tıklandığında sheet göster
                isSheetPresented = true
            } label: {
                Text("Show Sheet")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .sheet(isPresented: $isSheetPresented) {
                VStack {
                    Text("Bu bir sheet içeriğidir.")
                        .padding()

                    Button {
                        // Sheet'i kapat
                        isSheetPresented = false
                    } label: {
                        Text("Close Sheet")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SheetExample()
}
