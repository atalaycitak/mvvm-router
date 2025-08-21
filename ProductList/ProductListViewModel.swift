//
//  ProductListViewModel.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//
import Foundation
import Combine

final class ProductListViewModel: BaseViewModel<ProductListRouter> {
    @Published var cars: [Listing] = []

    @Published var errorMessage: String? = nil

    private let carService = CarService()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "İlanlar"
        fetchProducts()
    }

    func fetchProducts(skip: Int = 0, take: Int = 10) {
        self.isLoading = true
        Task {
            do {
                let fetchedProducts = try await carService.fetchCars(skip: skip, take: take)
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.cars = fetchedProducts
                }
            } catch {
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }

    @MainActor
    func navigateToDetail(listing: Listing) {
        router.routeToDetail(listing: listing)
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
