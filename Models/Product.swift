//
//  Product.swift
//  HostingControl
//
//  Created by Atalay Çıtak on 31.07.2025.
//
import Foundation

struct Product: Identifiable, Decodable {
    let id: Int
    let title: String
    let price: Double
    let priceFormatted: String
    let photo: String
    let location: Location
    let properties: [Property]?
    
    struct Location: Decodable {
        let cityName: String
        let townName: String
    }
    
    struct Property: Decodable {
        let name: String
        let value: String
    }

}
