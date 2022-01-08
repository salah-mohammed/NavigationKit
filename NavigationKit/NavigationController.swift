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
       if Navigation.shared.navigationController == nil {
           Navigation.shared.navigationController = self;
       }
       interactivePopGestureRecognizer?.addTarget(self, action: #selector(backSwipAction(_:))) 
        // Do any additional setup after loading the view.
    }
    // MARK:refreh NavigationData for VisibleViewController
    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        self.read(viewController);
    }
    @objc private func backSwipAction(_ sender:UIPanGestureRecognizer?){
        if sender?.state == .ended{
            DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
                if let viewController:UIViewController = self.viewControllers.last{
                    self.read(viewController);
                }
            }
        }
    }
    private func read(_ viewController:UIViewController){
        if let  tabBarController:UITabBarController = viewController as? UITabBarController {
            self.addTabbarController(tabBarController);
        }else{
            Navigation.shared.read(viewController);
        }
    }
    private func addTabbarController(_ tabBarControllerItem:UITabBarController){
        if tabBarObservations.filter({$0.0 == tabBarControllerItem}).first == nil {
            self.tabBarControllerItem=tabBarControllerItem
            var observer = observe(
                \.tabBarControllerItem?.selectedViewController,
                 options: [.old, .new]
             ) { object, change in
                 if let selectedViewController:UIViewController = change.newValue as? UIViewController{
                     Navigation.shared.read(selectedViewController);
                 }
             }
            if let selectedViewController:UIViewController = tabBarControllerItem.selectedViewController {
                Navigation.shared.read(selectedViewController);
            }
            self.tabBarObservations.append((tabBarControllerItem,observer));
        }
    }
}
