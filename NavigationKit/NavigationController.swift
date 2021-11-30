//
//  NavigationController.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//
import UIKit
open class NavigationController: UINavigationController,UINavigationControllerDelegate {
    private var tabBarObservations: [(UITabBarController,NSKeyValueObservation)]=[(UITabBarController,NSKeyValueObservation)]();
    @objc dynamic var tabBarControllerItem:UITabBarController!
   open override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate=self;
       if NavigationManager.shared.navigationController == nil {
       NavigationManager.shared.navigationController = self;
       }
        // Do any additional setup after loading the view.
    }
    // MARK:refreh NavigationData for VisibleViewController
    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let  tabBarController:UITabBarController = viewController as? UITabBarController {
            self.addTabbarController(tabBarController);
        }else{
            NavigationManager.shared.read(viewController);
        }
    }
    
    private func addTabbarController(_ tabBarControllerItem:UITabBarController){
        self.tabBarControllerItem=tabBarControllerItem
        var observer = observe(
            \.tabBarControllerItem?.selectedViewController,
             options: [.old, .new]
         ) { object, change in
             if let selectedViewController:UIViewController = change.newValue as? UIViewController{
                 NavigationManager.shared.read(selectedViewController);
             }
         }
        if let selectedViewController:UIViewController = tabBarControllerItem.selectedViewController {
        NavigationManager.shared.read(selectedViewController);
        }
        self.tabBarObservations.append((tabBarControllerItem,observer));
    }
}

extension UINavigationController{
    open func refrehNavigationData(){
        if let tabBarController:UITabBarController = visibleViewController as? UITabBarController{
            if let selectedViewController:UIViewController = tabBarController.selectedViewController {
            NavigationManager.shared.read(selectedViewController);
            }
        }else
        if let visibleViewController:UIViewController=visibleViewController{
        NavigationManager.shared.read(visibleViewController);
        }
    }
}
