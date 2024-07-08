//
//  ProfileExample.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 8.07.2024.
//

import SwiftUI

struct ProfileExample: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("kapak")
                .resizable()
            
            HStack {
                VStack {
                    Text("Eray Hamurlu")
                    Text("Developer")
                }
                
                Spacer()
            }.background(.gray)
        }
    }
}

#Preview {
    ProfileExample()
}
