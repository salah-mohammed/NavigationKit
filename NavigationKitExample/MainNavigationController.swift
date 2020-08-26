//
//  MainNavigationController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class MainNavigationController: UINavigationController,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate=self;
        // Do any additional setup after loading the view.
    }
    

//    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
//        if let viewController:NavigationInfoDelegate=viewController as? NavigationInfoDelegate{
//        NavigationColorManager.sharedInstance.readViewController(navigationInfo: viewController);
//        }
//    }
    
}
