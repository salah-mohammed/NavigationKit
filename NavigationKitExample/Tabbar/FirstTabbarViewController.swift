//
//  FirstTabbarViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 11/30/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class FirstTabbarViewController: UIViewController,NavigationDelegate {
    var navigationData=NavigationData.init(Navigation.NavigationStyle.custom(.all(AppStyle.greenBarStyle),UIColor.white))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnRefresh(_ sender: Any) {
        self.navigationData = NavigationData.init(Navigation.NavigationStyle.custom(.all(AppStyle.yelloBarStyle),UIColor.black))
        (self.navigationController as? MainNavigationController)?.refrehNavigationData();
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
