//
//  ChatView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.07.2024.
//

import SwiftUI

// Sohbet Ekranı Örneği
struct ChatView: View {
    
    let user: User
    
    // Örnek mesaj verileri
    @State private var messages = [
        Message(text: "Merhaba!", isSent: true),
        Message(text: "Nasılsın?", isSent: false),
        Message(text: "İyiyim, sen nasılsın?", isSent: true),
        Message(text: "Ben de iyiyim, teşekkürler.", isSent: false)
    ]
    
    @State var newMessage: String = ""
    
    var body: some View {
        VStack {
            // Ekranın üst kısmında yer alan ince çizgi
            Divider()
                .padding(0)
            
            ZStack {
                // Mesajların gösterildiği kaydırılabilir alan
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(messages) { message in
                            HStack {
                                if message.isSent {
                                    Spacer()
                                    Text(message.text)
                                        .padding(10)
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                        .padding(.trailing, 10)
                                } else {
                                    Text(message.text)
                                        .padding(10)
                                        .background(Color.white)
                                        .cornerRadius(10)
                                        .padding(.leading, 10)
                                    Spacer()
                                }
                            }
                        }
                    }
                    .padding(.top, 10)
                }
            }
            .background(
                Image("BackgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
            
            // Mesaj Gönderme Alanı
            HStack {
                // Eklenti butonu
                Button {
                    print("Eklenti butonuna tıklandı")
                } label: {
                    Image(systemName: "plus")
                        .foregroundStyle(.blue)
                }
                
                // Mesaj yazma alanı
                TextField("Mesaj yaz...", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Mesaj gönderme butonu, yeni mesaj girilmişse görünür
                if !newMessage.isEmpty {
                    Button {
                        // Yeni mesaj eklenir ve metin alanı temizlenir
                        messages.append(Message(text: newMessage, isSent: true))
                        newMessage = ""
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundStyle(.white)
                            .padding(6)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                }
                
                // Yeni mesaj girilmemişse kamera ve mikrofon butonları görünür
                if newMessage.isEmpty {
                    Button {
                        print("Kamera butonuna tıklandı")
                    } label: {
                        Image(systemName: "camera.fill")
                            .foregroundStyle(.blue)
                            .padding(.horizontal, 5)
                    }
                    
                    Button {
                        print("Sesli mesaj kayıt butonuna tıklandı")
                    } label: {
                        Image(systemName: "mic.fill")
                            .foregroundStyle(.blue)
                            .padding(.horizontal, 5)
                    }
                }
            }
            .padding(.horizontal, 14)
            .padding(.top, 2)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            // Ekranın üst kısmında kullanıcı bilgileri ve arama butonları
            ToolbarItem(placement: .topBarLeading) {
                HStack {
                    Spacer()
                        .frame(width: 10)
                    Image(user.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                    }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack(spacing: 20) {
                    Button(action: {
                        print("Sesli arama başlatıldı")
                    }) {
                        Image(systemName: "phone.fill")
                            .foregroundStyle(.blue)
                    }
                    Button(action: {
                        print("Görüntülü arama başlatıldı")
                    }) {
                        Image(systemName: "video.fill")
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ChatView(
            user: User(name: "Ali", lastMessage: "Merhaba", time: "14:30", imageName: "Man1"))
    }
}
