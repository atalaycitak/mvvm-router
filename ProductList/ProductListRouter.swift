//
//  ProductListRouter.swift
//  BaseController
//
//  Created by Atalay Çıtak on 11.08.2025.
//

import Foundation
import UIKit
@MainActor
protocol ProductListRouterProtocol: RouterInterface{
    func routeToDetail(product: Product)
    func routeToInfo()
}


final class ProductListRouter: Router{

    static func createModule ()-> UIViewController{
        return Router.createModule(){
            let router = ProductListRouter()
            let viewModel = ProductListViewModel(router: router)
            let contentView = ProductListView(viewModel: viewModel  )
            let viewController = ProductListViewController(contentView: contentView, viewModel: viewModel)
           
            router.viewController = viewController
            return viewController
        }
    }
}
extension ProductListRouter: ProductListRouterProtocol{
    func routeToDetail(product: Product) {
        let viewController = ProductDetailRouter.createModule(product: product)
        self.push(viewController, animated: true)
        
    }
    func routeToInfo() {
        let viewController = InfoRouter.createModule()
        self.present(viewController, animated: true)
        
    }
}
