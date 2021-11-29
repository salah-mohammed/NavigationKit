//
//  NavigationController.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//
import UIKit
open class NavigationController: UINavigationController,UINavigationControllerDelegate {

   open override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate=self;
        // Do any additional setup after loading the view.
    }
    // MARK:refreh NavigationData for VisibleViewController
    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        NavigationManager.shared.read(viewController);
    }
}

extension UITabBarController{
    open func refrehNavigationData(){
        if let selectedViewController:UIViewController=self.selectedViewController{
        NavigationManager.shared.read(selectedViewController);
        }
    }
}
extension UINavigationController{
    open func refrehNavigationData(){
        if let visibleViewController:UIViewController=visibleViewController{
        NavigationManager.shared.read(visibleViewController);
        }
    }
}
//open class NavigationControllerImplemntation:NSObject,UINavigationControllerDelegate{
//    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
//        NavigationManager.shared.read(viewController);
//    }
//
//}
//
//open class TabbarControllerImplemntation:NSObject,UITabBarControllerDelegate{
//    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){
//        NavigationManager.shared.read(viewController);
//    }
//}
