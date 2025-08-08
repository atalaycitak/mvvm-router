//
//  ProductListViewModel.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//

import Foundation

final class ProductListViewModel: BaseViewModel {
    @Published var products: [Product] = []
    var onProductSelected: ((Product) -> Void)?
    var onShowInfoTapped: (() -> Void)?
    
    override init() {
        super.init()
        self.title = "Ürünler"
        fetchProducts()
    }
    
    func fetchProducts() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.products = sampleProducts
            self.isLoading = false
        }
    }
}
