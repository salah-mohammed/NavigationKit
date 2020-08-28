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
        if let viewController:NavigationInfoDelegate=viewController as? NavigationInfoDelegate{
        NavigationStyleManager.sharedInstance.readViewController(navigationInfo: viewController);
        }else if let defaultColor:NavigationData = NavigationStyleManager.sharedInstance.defaultColor{
            NavigationStyleManager.sharedInstance.read(navigationColor:defaultColor)
        }
    }
    open func refrehNavigationInfoVisibleViewController(){
        if let viewController:NavigationInfoDelegate = self.visibleViewController as? NavigationInfoDelegate{
              NavigationStyleManager.sharedInstance.readViewController(navigationInfo: viewController);
        }else if let defaultColor:NavigationData = NavigationStyleManager.sharedInstance.defaultColor{
            NavigationStyleManager.sharedInstance.read(navigationColor:defaultColor)
        }
    }
}
