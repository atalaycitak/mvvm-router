//
//  SceneDelegate.swift
//  BaseController
//
//  Created by Atalay Çıtak on 15.08.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
       
        let tabBarVC = TabBarController()
        window.rootViewController = tabBarVC
        window.makeKeyAndVisible()
        
        self.window = window
    }
}
