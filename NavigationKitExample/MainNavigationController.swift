//
//  MainNavigationController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit
public class MainNavigationController: NavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        NavigationManager.sharedInstance.navigationController=self;
        // Do any additional setup after loading the view.
    }
    
}
