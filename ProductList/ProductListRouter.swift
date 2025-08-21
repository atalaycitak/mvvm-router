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
    func routeToDetail(listing: Listing)
    func routeToInfo()
    func routeToWelcome()
}


final class ProductListRouter: Router{

    static func createModule ()-> UIViewController{
        return Router.createModule(){
            let router = ProductListRouter()
            let viewModel = ProductListViewModel(router: router)
            let contentView = CarListingView(viewModel: viewModel  )
            let viewController = ProductListViewController(contentView: contentView, viewModel: viewModel)
           
            router.viewController = viewController
            return viewController
        }
    }
}
extension ProductListRouter: ProductListRouterProtocol{
    
    func routeToDetail(listing: Listing) {
        let viewController = ProductDetailRouter.createModule(listing: listing)
        self.push(viewController, animated: true)
        
    }
    func routeToInfo() {
        let viewController = InfoRouter.createModule()
        self.push(viewController, animated: true)
        
    }
    
    func routeToWelcome() {
        let viewController = WelcomeRouter.createModule()
        self.push(viewController, animated: true)
    }

}
