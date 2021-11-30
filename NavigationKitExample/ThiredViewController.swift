//
//  ThiredViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit

class ThiredViewController: UIViewController,NavigationDelegate {
    var navigationData=NavigationData.init(Navigation.Style.hide);

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnToForth(_ sender: Any) {
        if let thiredViewController:ForthViewController=UIStoryboard.init(name:"MainStoryboard", bundle: nil).instantiateViewController(withIdentifier:"ForthViewController") as? ForthViewController{
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
