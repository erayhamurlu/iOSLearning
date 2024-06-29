//
//  DispatchQueue.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 29.06.2024.
//

import SwiftUI

struct DispatchQueueView: View {
    @State private var posts: [Post] = []
    @State private var isLoading: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                List(posts) { post in
                    VStack(alignment: .leading) {
                        Text(post.title)
                            .font(.headline)
                        Text(post.body)
                            .font(.subheadline)
                    }
                }
                
                if isLoading {
                    ProgressView()
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
        self.isLoading = true
        // URL oluşturuyoruz
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        // Arka planda veri çekme işlemini başlatıyoruz
        DispatchQueue.global(qos: .background).async {
            // add sleep
            sleep(2)
            
            // Veri çekme işlemi
            if let data = try? Data(contentsOf: url) {
                // JSON verisini parse ediyoruz
                if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
                    // Ana iş parçacığında verileri güncelliyoruz
                    DispatchQueue.main.async {
                        self.posts = decodedResponse
                        self.isLoading = false
                    }
                }
            }
        }
    }
}

#Preview {
    DispatchQueueView()
}
