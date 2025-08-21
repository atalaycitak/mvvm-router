//
//  APIClient 2.swift
//  BaseController
//
//  Created by Atalay Çıtak on 20.08.2025.
//

import Foundation

final class APIClient {
    static let shared = APIClient()
    
    private init() {}
    //base endpoint oluştur parametre olarak base parametresi alınsın
    func request<T: Decodable>(endpoint: CarEndpoint) async throws -> T {
        let urlRequest = try await buildRequest(from: endpoint)

        let (data, _) = try await URLSession.shared.data(for: urlRequest)

        let decodedResponse = try JSONDecoder().decode(T.self, from: data)
        return decodedResponse
    }
    
    private func buildRequest(from endpoint: CarEndpoint) async throws -> URLRequest {
        guard let url = URL(string: endpoint.baseURL + endpoint.path) else {
            throw NSError(domain: "APIClient", code: 400, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method

        if let parameters = endpoint.parameters {
            var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false)
            urlComponents?.queryItems = parameters.map { URLQueryItem(name: $0.key, value: "\($0.value)") }
            request.url = urlComponents?.url
        }
        
        return request
    }
}
