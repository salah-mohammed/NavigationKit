//
//  FirstTabbarViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 11/30/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class FirstTabbarViewController: UIViewController,NavigationStyle {
    var style = AppStyle.greenBarStyle
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.title="First";
        self.tabBarController?.title=self.title
    }
    @IBAction func btnRefresh(_ sender: Any) {
        self.style = AppStyle.yelloBarStyle
        self.navigationController?.refrehStyle();
    }
//    func asd(style:Navigation.Style)-> Navigation.Style? {
//
//        return nil;
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
