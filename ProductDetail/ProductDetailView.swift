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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                AsyncImage(url: URL(string: viewModel.listing?.photo ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .overlay(ProgressView())
                }
                .frame(maxWidth: .infinity)
                .cornerRadius(12)
     
                Text(viewModel.listing?.title ?? "")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
 
                Text(viewModel.listing?.priceFormatted ?? "")
                    .font(.title3)
                    .foregroundColor(.red)
                    .padding(.horizontal)
             
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.gray)
                    Text("\(viewModel.listing?.location.cityName ?? "") / \(viewModel.listing?.location.townName ?? "")")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                
                Divider().padding(.vertical)
           
                if let props = viewModel.listing?.properties {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Özellikler")
                            .font(.headline)
                        
                        ForEach(props, id: \.name) { prop in
                            HStack {
                                Text(prop.name.capitalized)
                                    .fontWeight(.semibold)
                                Spacer()
                                Text(prop.value ?? "")
                            }
                            .padding(.vertical, 4)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
        .navigationTitle("Detay")
        .navigationBarTitleDisplayMode(.inline)
    }
}
