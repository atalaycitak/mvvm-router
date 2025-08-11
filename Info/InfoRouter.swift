//
//  InfoRouter.swift
//  BaseController
//
//  Created by Atalay Çıtak on 11.08.2025.
//

import Foundation
import UIKit

protocol InfoRouterInterface{
    func NavigateToWebView()
}

extension InfoRouter{
    func NavigateToWebView(){
        
    }
    
}

final class InfoRouter: Router{
    static func createModule ()-> UIViewController{
        return Router.createModule(){
            let router = InfoRouter()
            let viewModel = InfoViewModel(router: router)
            let contentView = InfoView(viewModel: viewModel  )
            let viewController = InfoViewController(contentView: contentView, viewModel: viewModel)
            router.viewController = viewController
            return viewController
        }
    }
}
