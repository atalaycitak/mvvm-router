//
//  WelcomeRouter.swift
//  BaseController
//
//  Created by Atalay Çıtak on 14.08.2025.
//

import Foundation
import UIKit



final class WelcomeRouter: Router{
    static func createModule ()-> UIViewController{
        return Router.createModule(){
            let router = WelcomeRouter()
            let viewModel = WelcomeViewModel(router: router)
            let contentView = WelcomeView(viewModel: viewModel)
            let viewController = WelcomeViewController(contentView: contentView, viewModel: viewModel)
            router.viewController = viewController 
            return viewController
        }
    }
}
