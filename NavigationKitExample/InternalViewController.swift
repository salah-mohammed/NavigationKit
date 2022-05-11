//
//  InternalViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 4/10/22.
//  Copyright © 2022 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class InternalViewController: UIViewController,NavigationStyle {
    var style = AppStyle.backgroundImageBarStyle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    deinit {
        print("\nInternalViewController")
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
