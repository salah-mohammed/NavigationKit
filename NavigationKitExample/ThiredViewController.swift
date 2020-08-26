//
//  ThiredViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class ThiredViewController: UIViewController,NavigationInfoDelegate {
    var navigationColor: NavigationColorData=NavigationColorData.init(barColor: NavigationColorManager.BarColor.backgroundImage(UIImage.init(named:"navigationImage")!), textColor:UIColor.white)

    @IBOutlet weak var btnRefresh: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="background Image with title Color"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
    }
    
    @IBAction func btnRefresh(_ sender: Any) {
        self.navigationColor = NavigationColorData.init(barColor: NavigationColorManager.BarColor.transparent, textColor:UIColor.black)
        (self.navigationController as? MainNavigationController)?.refrehNavigationInfoVisibleViewController();
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

