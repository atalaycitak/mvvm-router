//
//  ProductDetailRoute.swift
//  BaseController
//
//  Created by Atalay Çıtak on 11.08.2025.
//

import Foundation
import UIKit


final class ProductDetailRouter: RouterInterface{
    static func createModule (product : Product)-> UIViewController{
        return Router.createModule(){
            let router = ProductDetailRouter()
            let viewModel = ProductDetailViewModel(router: router)
            viewModel.product = product
            let contentView = ProductDetailView(viewModel: viewModel  )
            let viewController = ProductDetailViewController(contentView: contentView, viewModel: viewModel)
            return viewController
        }
    }
}
