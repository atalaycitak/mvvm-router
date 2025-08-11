//
//  Router.swift
//  BaseController
//
//  Created by Atalay Çıtak on 11.08.2025.
//

import Foundation
import UIKit

@MainActor
protocol RouterInterface: AnyObject {
    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    func push(_ viewController: UIViewController, animated: Bool)
    func dismiss(animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
}

extension RouterInterface {
    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {}
    func push(_ viewController: UIViewController, animated: Bool) {}
    func dismiss(animated: Bool) {}
    func pop(animated: Bool) {}
    func popToRoot(animated: Bool) {}
}

@MainActor
class Router {
    
    // MARK: - Properties
    weak var viewController: UIViewController?
    
    // MARK: - init
    init() {}
    
    // MARK: - Module Creation
    static func createModule<T: UIViewController>(moduleCreation: () -> T) -> T {
        return moduleCreation()
    }
}

// MARK: - Router Interface
extension Router: RouterInterface {
    func present(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        self.viewController?.present(viewController, animated: animated, completion: completion)
    }
    
    func push(_ viewController: UIViewController, animated: Bool = true) {
        self.viewController?.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func dismiss(animated: Bool = true) {
        self.viewController?.dismiss(animated: animated)
    }
    
    func pop(animated: Bool = true) {
        self.viewController?.navigationController?.popViewController(animated: animated)
    }
    
    func popToRoot(animated: Bool = true) {
        self.viewController?.navigationController?.popToRootViewController(animated: animated)
    }
}
