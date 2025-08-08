//
//  ProductDetailModelView.swift
//  BaseController
//
//  Created by Atalay Çıtak on 31.07.2025.
//

import Foundation

final class ProductDetailViewModel: BaseViewModel {
    let product: Product
    
    init(product: Product) {
        self.product = product
        super.init()
        self.title = product.name
    }
}
