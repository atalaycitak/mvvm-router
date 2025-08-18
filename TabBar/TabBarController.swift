//
//  TabBarViewController.swift
//  BaseController
//
//  Created by Atalay Çıtak on 15.08.2025.
//
//
//  TabBarViewController.swift
//  BaseController
//
//  Created by Atalay Çıtak on 15.08.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupViewControllers()
    }

    private func setupTabBar() {
        tabBar.tintColor = .purple
        tabBar.backgroundColor = .systemBackground
    }
    
    private func setupViewControllers() {
        let welcomeVC = WelcomeRouter.createModule()
        welcomeVC.tabBarItem = UITabBarItem(
            title: "Welcome",
            image: UIImage(systemName: "house"),
            tag: 0
        )

        let productVC = ProductListRouter.createModule()
        productVC.tabBarItem = UITabBarItem(
            title: "Products",
            image: UIImage(systemName: "cart"),
            tag: 1
        )
        
        let infoVC = InfoRouter.createModule()
        infoVC.tabBarItem = UITabBarItem(
            title: "Info",
            image: UIImage(systemName: "info.circle"),
            tag: 2
        )

        viewControllers = [
            UINavigationController(rootViewController: welcomeVC),
            UINavigationController(rootViewController: productVC),
            UINavigationController(rootViewController: infoVC)
        ]
    }
}
