//
//  SecondViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit

class SecondViewController: UIViewController,NavigationStyle {
    @IBOutlet weak var btnToThired: UIButton!
    var style = Navigation.Style.custom(apperanceType:.all(AppStyle.greenBarStyle),tintColor:UIColor.white)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title="Change bar color with title";
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
    }
    deinit {
        print("\nSecondViewController")
    }
    @IBAction func btnToThired(_ sender: Any) {
        if let thiredViewController:ThiredViewController=UIStoryboard.init(name:"MainStoryboard", bundle: nil).instantiateViewController(withIdentifier:"ThiredViewController") as? ThiredViewController{
            self.navigationController!.pushViewController(thiredViewController, animated: true);
        }
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
