//
//  CarEndpoint 2.swift
//  BaseController
//
//  Created by Atalay Çıtak on 20.08.2025.
//


import Foundation

enum CarEndpoint {
    case getListings(skip: Int, take: Int)
    
    var baseURL: String { "https://sandbox.arabamd.com/api/v1" }
    
    var path: String {
        switch self {
        case .getListings:
            return "/listing"
        }
    }
    
    var method: String {
        switch self {
        case .getListings:
            return "GET"
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .getListings(let skip, let take):
            return [
                "sort": 1,
                "sortDirection": 0,
                "skip": skip,
                "take": take
            ]
        }
    }
}
