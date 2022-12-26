//
//  NavigationKitEx.swift
//  NavigationKit
//
//  Created by Salah on 11/29/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import Foundation
import UIKit
public extension Navigation.Style {
     var tintColor:UIColor?{
        switch self{
        case .hide:
            return nil
        case .custom(apperanceType: let _, tintColor: let tintColor):
            return tintColor
        }
    }
}
extension Navigation {
    func read(_ viewController:UIViewController,navigationController:UINavigationController){
        if let viewController:NavigationStyle=viewController as? NavigationStyle{
            Navigation.shared.readViewController(navigationStyle: viewController,navigationController);
        }else if let defaultStyle:Navigation.Style = Navigation.shared.defaultStyle{
            Navigation.shared.read(style:defaultStyle,navigationController)
        }
    }
}

extension UINavigationController{
    open func refrehStyle(){
        if let tabBarController:UITabBarController = visibleViewController as? UITabBarController{
            if let selectedViewController:UIViewController = tabBarController.selectedViewController {
                Navigation.shared.read(selectedViewController, navigationController: self);
            }
        }else
        if let visibleViewController:UIViewController=visibleViewController{
            Navigation.shared.read(visibleViewController, navigationController: self);
        }
    }
}
extension UIApplication {
    // swiftUI
     var swiftUINavigationController:UINavigationController?{
        return UIApplication.shared.window?.rootViewController?.children.first?.children.first as? UINavigationController
    }
     var window: UIWindow? {
            if #available(iOS 13.0, *) {
                return UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }
            } else {
                return UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            }
       }
}

