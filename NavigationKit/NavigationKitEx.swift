//
//  NavigationKitEx.swift
//  NavigationKit
//
//  Created by Salah on 11/29/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import Foundation
import UIKit
extension Navigation {
    func read(_ viewController:UIViewController){
        if let viewController:NavigationDelegate=viewController as? NavigationDelegate{
            Navigation.shared.readViewController(navigationDelegate: viewController);
        }else if let defaultStyle:Navigation.Style = Navigation.shared.defaultStyle{
            Navigation.shared.read(style:defaultStyle)
        }
    }
}

extension UINavigationController{
    open func refrehNavigationData(){
        if let tabBarController:UITabBarController = visibleViewController as? UITabBarController{
            if let selectedViewController:UIViewController = tabBarController.selectedViewController {
                Navigation.shared.read(selectedViewController);
            }
        }else
        if let visibleViewController:UIViewController=visibleViewController{
            Navigation.shared.read(visibleViewController);
        }
    }
}
