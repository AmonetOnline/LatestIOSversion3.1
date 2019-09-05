//
//  FlowController.swift
//  Amonet
//
//  Created by Serge Mbamba on 2018/11/07.
//  Copyright © 2018 Amonet. All rights reserved.
//

import UIKit

protocol FlowController: class {
    var router: Router { get}
    var flowStoryboard: UIStoryboard { get }
    var currentViewController: UIViewController? { get set }
    var rootViewController: UIViewController? { get set }
    func generate<T: UIViewController>(isRootViewController: Bool) -> T?
    func navigationItem(_ item: TabBarItem, for viewController: UIViewController?) -> UIViewController?
}

extension FlowController {
    func generate<T: UIViewController>(isRootViewController: Bool = false) -> T? {
        let identifier = String(describing: T.self)
        guard let availableIdentifiers = flowStoryboard.value(forKey: "identifierToNibNameMap") as? [String: Any],
            availableIdentifiers.keys.contains(identifier) else {
            return nil
        }
        
        let viewController = flowStoryboard.instantiateViewController(withIdentifier: identifier) as? T
        if isRootViewController { rootViewController = viewController }
        
        return viewController
    }
    
    func navigationItem(_ item: TabBarItem, for viewController: UIViewController?) -> UIViewController? {
        guard let viewControllerToImbed = viewController else {
                return nil
        }
        let tabBarItem = UITabBarItem(title: item.displayValue, image: item.normalIconName, selectedImage: item.selectedIconName)
        
        tabBarItem.tag = item.tag
        viewControllerToImbed.title = item.displayValue
        viewControllerToImbed.tabBarItem = tabBarItem
        return viewControllerToImbed
    }
}
