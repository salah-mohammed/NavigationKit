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
    

    open func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let viewController:NavigationDelegate=viewController as? NavigationDelegate{
        NavigationManager.sharedInstance.readViewController(navigationDelegate: viewController);
        }else if let defaultColor:NavigationData = NavigationManager.sharedInstance.defaultColor{
            NavigationManager.sharedInstance.read(navigationColor:defaultColor)
        }
    }
     // MARK:refreh NavigationData for VisibleViewController
    open func refrehNavigationData(){
        if let viewController:NavigationDelegate = self.visibleViewController as? NavigationDelegate{
              NavigationManager.sharedInstance.readViewController(navigationDelegate: viewController);
        }else if let defaultColor:NavigationData = NavigationManager.sharedInstance.defaultColor{
            NavigationManager.sharedInstance.read(navigationColor:defaultColor)
        }
    }
}
