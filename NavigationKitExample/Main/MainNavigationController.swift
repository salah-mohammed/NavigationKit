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
    open override var viewControllers: [UIViewController]{
        didSet{
            print("sa");
        }
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        Navigation.shared.defaultStyle = AppStyle.redBarStyle

        // Do any additional setup after loading the view.
    }
    public override func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        super.navigationController(navigationController, willShow: viewController, animated: animated)
        viewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: String(), style: .plain, target: nil, action: nil)
    }
}

