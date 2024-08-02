//
//  CallsView.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 2.08.2024.
//

import SwiftUI

struct CallsView: View {
    // Arama kayıtları listesi
    let calls = [
        CallRecord(name: "Mert Ayla", direction: "Gelen", date: "25.07.2024", imageName: "Man1"),
        CallRecord(name: "Sevgilim", direction: "Giden", date: "24.07.2024", imageName: "Woman1"),
        CallRecord(name: "Mert Guven", direction: "Gelen", date: "22.07.2024", imageName: "Man2"),
        CallRecord(name: "Uğur Bassarac", direction: "Gelen", date: "20.07.2024", imageName: "Man3"),
        CallRecord(name: "Soner Avcı", direction: "Gelen", date: "18.07.2024", imageName: "Man4"),
        CallRecord(name: "Ece Yılmaz", direction: "Giden", date: "17.07.2024", imageName: "Woman2"),
        CallRecord(name: "Can Demir", direction: "Gelen", date: "15.07.2024", imageName: "Man5"),
        CallRecord(name: "Zeynep Kaya", direction: "Giden", date: "14.07.2024", imageName: "Woman3"),
        CallRecord(name: "Emre Aydın", direction: "Gelen", date: "12.07.2024", imageName: "Man5"),
        CallRecord(name: "Leyla Alkan", direction: "Giden", date: "10.07.2024", imageName: "Woman4")
    ]
    
    var body: some View {
        NavigationView {
            List(calls, id: \.name) { call in
                HStack {
                    Image(call.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text(call.name) // Kişinin adı
                        HStack {
                            Image(systemName: call.direction == "Gelen" ? "phone.fill" : "phone.down.fill")
                                .foregroundColor(.green)
                            Text(call.direction) // Arama yönü
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Text(call.date) // Arama tarihi
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Button(action: {
                        print("Detaylar görüntülendi")
                    }) {
                        Image(systemName: "info.circle")
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Aramalar")
        }
    }
}

#Preview {
    CallsView()
}
