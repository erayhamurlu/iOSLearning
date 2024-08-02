//
//  ChatListView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.07.2024.
//
import SwiftUI

// Ana Sayfa Örneği
struct ChatListView: View {
    // Örnek kullanıcı verileri
    let users = [
        User(name: "Ali", lastMessage: "Merhaba", time: "14:30", imageName: "Man1"),
        User(name: "Ayşe", lastMessage: "Nasılsın?", time: "13:15", imageName: "Woman1"),
        User(name: "Mehmet", lastMessage: "İyi akşamlar", time: "11:00", imageName: "Man2"),
        User(name: "Fatma", lastMessage: "Görüşürüz", time: "10:00", imageName: "Woman2"),
        User(name: "Ahmet", lastMessage: "Tamamdır", time: "9:30", imageName: "Man3"),
        User(name: "Elif", lastMessage: "Teşekkürler", time: "8:00", imageName: "Woman3"),
        User(name: "Can", lastMessage: "Harika!", time: "7:45", imageName: "Man4"),
        User(name: "Zeynep", lastMessage: "Günaydın", time: "6:15", imageName: "Woman4"),
        User(name: "Kemal", lastMessage: "Neredesin?", time: "5:30", imageName: "Man5"),
        User(name: "Aylin", lastMessage: "Görüşmek üzere", time: "4:00", imageName: "Woman5")
    ]
    
    var body: some View {
        List(users) { user in
            NavigationLink(destination: ChatView(
                user: user)) {
                    HStack {
                        Image(user.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            HStack {
                                Text(user.name)
                                    .font(.headline)
                                Spacer()
                                Text(user.time)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Text(user.lastMessage)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
        }
        .listStyle(.inset)
        .navigationTitle("Chats")
    }
}

#Preview {
    ChatListView()
}
