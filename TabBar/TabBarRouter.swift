//
//  TabBarRouter.swift
//  BaseController
//
//  Created by Atalay Çıtak on 15.08.2025.
//

import UIKit

final class TabBarRouter: Router {
    
    static func createModule() -> UITabBarController {
        let tabBarVC = TabBarViewController()
        let router = TabBarRouter()
        router.viewController = tabBarVC
        
        let welcomeVC = WelcomeRouter.createModule()
        welcomeVC.tabBarItem = UITabBarItem(title: "Welcome", image: UIImage(systemName: "house"), tag: 0)
        
        let infoVC = InfoRouter.createModule()
        infoVC.tabBarItem = UITabBarItem(title: "Info", image: UIImage(systemName: "info.circle"), tag: 1)
        
        let productVC = ProductListRouter.createModule()
        productVC.tabBarItem = UITabBarItem(title: "Products", image: UIImage(systemName: "cart"), tag: 2)

        tabBarVC.viewControllers = [
            UINavigationController(rootViewController: welcomeVC),
            UINavigationController(rootViewController: productVC),
            UINavigationController(rootViewController: infoVC)

        ]
        
        return tabBarVC
    }
}
