//
//  WelcomeView.swift
//  BaseController
//
//  Created by Atalay Çıtak on 14.08.2025.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject var viewModel: WelcomeViewModel

    var body: some View {
        VStack(spacing: 20) {
            Image("kampanya")
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(15)
                .shadow(radius: 5)

            Text("%50 İNDİRİM FIRSATI!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)

            Text("Sadece bu hafta geçerli olan indirimli ürünleri keşfedin.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Spacer()

        }
        .padding()
        .navigationTitle("Kampanya")
    }
}
