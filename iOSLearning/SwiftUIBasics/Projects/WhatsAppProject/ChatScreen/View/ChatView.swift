//
//  ChatView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.07.2024.
//

import SwiftUI

// Sohbet Ekranı Örneği
struct ChatView: View {
    // Örnek mesaj verileri
    let messages = [
        Message(text: "Merhaba!", isSent: true),
        Message(text: "Nasılsın?", isSent: false),
        Message(text: "İyiyim, sen nasılsın?", isSent: true),
        Message(text: "Ben de iyiyim, teşekkürler.", isSent: false)
    ]

    @State var newMessage: String = ""

    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(messages) { message in
                        HStack {
                            if message.isSent {
                                Spacer()
                                Text(message.text)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .padding(.trailing, 10)
                            } else {
                                Text(message.text)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.top, 10)
            }
            .background(
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )

            HStack {
                TextField("Mesaj yaz...", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 10)

                Button {
                    print("Mesaj gönderildi")
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .padding()
        }
        .navigationTitle("Sohbet")
    }
}

#Preview {
    ChatView()
}
