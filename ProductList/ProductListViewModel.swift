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
    
    func fetchProducts() {
        self.isLoading = true
        
        APIClient.shared.fetchListings { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.isLoading = false
                
                switch result {
                case .success(let products):
                    self.products = products
                case .failure(let error):
                    print("Error fetching products: \(error.localizedDescription)")
                    self.products = []
                }
            }
        }
    }

    @MainActor
    func navigateToDetail(product: Product) {
        router.routeToDetail(product: product)
    }
    
    @MainActor
    func navigateToInfo() {
        router.routeToInfo()
    }
    
    @MainActor
    func navigateToWelcome() {
        router.routeToWelcome()
    }
}
