//
//  ViewController.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit
import NavigationKit
class FirstViewController: UIViewController,NavigationInfoDelegate {
    @IBOutlet weak var btToSecondViewController: UIButton!
    var navigationColor: NavigationColorData=NavigationColorData.init(hideNavigation: NavigationColorManager.HideNavigation.customColor(NavigationColorManager.BarColor.transparent, UIColor.black))
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Transparent";
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        
    }
    @IBAction func btToSecondViewController(_ sender: Any) {
        if let secondViewController:SecondViewController=UIStoryboard.init(name:"MainStoryboard", bundle: nil).instantiateViewController(withIdentifier:"SecondViewController") as? SecondViewController{
            self.navigationController!.pushViewController(secondViewController, animated: true);
        }
    }
    
}

