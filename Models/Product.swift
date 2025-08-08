//
//  Product.swift
//  HostingControl
//
//  Created by Atalay Çıtak on 31.07.2025.
//
import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let price: Double
}
