//
//  SecondTabbarViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 11/30/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class SecondTabbarViewController: UITableViewController,NavigationStyle {
    var style=Navigation.Style.custom(apperanceType: .cutome(standard: AppStyle.backgroundImageBarStyle, scrollEdge: AppStyle.redBarStyle, compact: AppStyle.yelloBarStyle),tintColor: UIColor.white)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.title="Second";
        self.tabBarController?.title=self.title
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
