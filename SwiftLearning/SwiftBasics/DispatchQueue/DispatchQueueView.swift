//
//  DispatchQueue.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.06.2024.
//

import SwiftUI

// Post modelimizi tanımlıyoruz
struct Post: Identifiable, Decodable {
    let id: Int
    let title: String
    let body: String
}

struct DispatchQueueView: View {
    @State private var posts: [Post] = []

    var body: some View {
        NavigationView {
            List(posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .font(.subheadline)
                }
            }
            .navigationBarTitle("Gönderiler")
            .onAppear {
                fetchPosts()
            }
        }
    }

    // MARK: - Veri çekme işlemi
    func fetchPosts() {
        // URL oluşturuyoruz
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        // Arka planda veri çekme işlemini başlatıyoruz
        DispatchQueue.global(qos: .background).async {
            // Veri çekme işlemi
            if let data = try? Data(contentsOf: url) {
                // JSON verisini parse ediyoruz
                if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
                    // Ana iş parçacığında verileri güncelliyoruz
                    DispatchQueue.main.async {
                        self.posts = decodedResponse
                    }
                }
            }
        }
    }
}

#Preview {
    DispatchQueueView()
}
