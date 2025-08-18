//
//  APIClient.swift
//  BaseController
//
//  Created by Atalay Çıtak on 18.08.2025.
//

import Foundation
//generic bir network yapısı oluştur. generic network layer 
final class APIClient {
    static let shared = APIClient()
    private init() {}

    func fetchListings(
        sort: Int = 1,
        sortDirection: Int = 0,
        take: Int = 10,
        completion: @escaping (Result<[Product], Error>) -> Void
    ) {
        guard let url = URL(string: "https://sandbox.arabamd.com/api/v1/listing?sort=\(sort)&sortDirection=\(sortDirection)&take=\(take)") else {
            completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: -2, userInfo: [NSLocalizedDescriptionKey: "Empty response"])))
                return
            }
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
                completion(.success(products))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}

