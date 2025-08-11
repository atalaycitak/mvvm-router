//
//  ProductDetailView.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//

import SwiftUI

struct ProductDetailView: View {
    @ObservedObject var viewModel: ProductDetailViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Image(viewModel.product?.imageName ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(10)
            
            Text(viewModel.product?.name ?? "")
                .font(.title)
                .bold()
                .foregroundColor(.purple)
            Text(viewModel.product?.description ?? "")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .foregroundColor(.secondary)
                
            
            Text(String(format: "₺%.2f", viewModel.product?.price ?? ""))
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
        }
        .padding(.top, 40)
    }
}
