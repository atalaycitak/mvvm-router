//
//  ProductListViewModel.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//

import Foundation

final class ProductListViewModel: BaseViewModel<ProductListRouter> {
    @Published var products: [Product] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Product List"
        fetchProducts()
    }
    func fetchProducts(){
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.products = sampleProducts
            self.isLoading = false
            
        }
    }
    @MainActor
    func navigateToDetail(product: Product){
        router.routeToDetail(product:product)
    }
    @MainActor
    func navigateToInfo(){
        router.routeToInfo()
    }
    @MainActor
    func navigateToWelcome() {
        router.routeToWelcome()
    }

}
