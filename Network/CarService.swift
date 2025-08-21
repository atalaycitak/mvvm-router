//
//  CarService.swift
//  BaseController
//
//  Created by Atalay Çıtak on 20.08.2025.
//

import Foundation

protocol CarServiceProtocol {
    func fetchCars(skip: Int, take: Int) async throws -> [Listing]
}

final class CarService: CarServiceProtocol {
    private let apiClient = APIClient.shared

    func fetchCars(skip: Int, take: Int = 10) async throws -> [Listing] {
        let endpoint = CarEndpoint.getListings(skip: skip, take: take)
        return try await apiClient.request(endpoint: endpoint)
    }
}
