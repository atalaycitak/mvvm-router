//
//  InfoView.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
import SwiftUI

struct InfoView: View {
    @ObservedObject var viewModel: InfoViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Spacer()
                    Image("heza")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .cornerRadius(40)
                        .shadow(color: .black.opacity(0.2), radius: 10, y: 5)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Heza!")
                        .font(.system(size: 50, weight: .bold, design: .serif))
                        .foregroundColor(.purple)
                        .minimumScaleFactor(0.7)
                    Spacer()
                }
                .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Biz Kimiz?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Heza! olarak teknolojiye olan tutkumuzu, özenle seçilmiş ürünlerle sizlerle buluşturuyoruz. Bizim için teknoloji, sadece bir cihazdan ibaret değil; hayatı kolaylaştıran, anları ölümsüzleştiren, yaratıcılığı besleyen ve eğlenceyi doruklara taşıyan bir deneyimdir. Amacımız, teknoloji yolculuğunuzda size en doğru seçimi yapmanız için destek olan bir yol arkadaşı olmaktır.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                }
                
                Divider()
                    .padding(.vertical, 10)
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("İletişim Bilgileri")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    // ... (İletişim bilgileri HStack'leri aynı kalıyor) ...
                    HStack(spacing: 15) {
                        Image(systemName: "mappin.and.ellipse")
                            .font(.title3)
                            .foregroundColor(.purple)
                            .frame(width: 30)
                        Text("Milli Kuvvetler Caddesi, No: 123, Kat: 2\nKaresi, 10010 Balıkesir, Türkiye")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "phone.fill")
                            .font(.title3)
                            .foregroundColor(.purple)
                            .frame(width: 30)
                        Text("+90 (266) 123 45 67")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .font(.title3)
                            .foregroundColor(.purple)
                            .frame(width: 30)
                        Text("destek@heza.com.tr")
                            .minimumScaleFactor(0.8)
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "globe")
                            .font(.title3)
                            .foregroundColor(.purple)
                            .frame(width: 30)
                        Text("www.heza.com.tr")
                            .minimumScaleFactor(0.8)
                    }
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Hakkımızda")
    }
}
