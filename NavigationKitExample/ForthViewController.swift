//
//  ForthViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/28/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit


class ForthViewController: UIViewController,NavigationDelegate {
    var navigationData: NavigationData=NavigationData.init(NavigationManager.NavigationStyle.custom(AppStyle.backgroundImageBarStyle))
    

    @IBOutlet weak var btnRefresh: UIButton!
    @IBOutlet weak var lblDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="background Image with title Color"
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnNext(_ sender: Any) {
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
    }
    
    @IBAction func btnRefresh(_ sender: Any) {
        lblDescription.text="navigation bar change background image to set navigation bar yellow color";
        self.navigationData = NavigationData.init(NavigationManager.NavigationStyle.custom(AppStyle.yelloBarStyle))
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
