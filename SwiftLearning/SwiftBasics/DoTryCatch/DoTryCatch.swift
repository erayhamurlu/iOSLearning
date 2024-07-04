//
//  DoTryCatch.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 4.07.2024.
//

import SwiftUI

struct DoTryCatch: View {
    var body: some View {
        Text(loadFileContent())
    }
    
    func loadFileContent() -> String {
        let fileName = "example.txt" // Dosya adı
        
        do {
            // Dosya içeriğini oku
            let content = try readFile(named: fileName)
            return content
        } catch {
            // Hata yakalandı, uygun mesaj göster
            return "Dosya okunamadı: \(error.localizedDescription)"
        }
    }
    
    // MARK: - Dosya Okuma Fonksiyonu
    func readFile(named fileName: String) throws -> String {
        // Bu örnekte hata yaratmak için dosyanın mevcut olmadığını varsayıyoruz
        // Gerçek bir dosya okuma işlemi bu kadar basit olmayabilir
        throw NSError(domain: "Dosya Hatası", code: 404, userInfo: [NSLocalizedDescriptionKey: "Dosya bulunamadı"])
    }
}

#Preview {
    DoTryCatch()
}
