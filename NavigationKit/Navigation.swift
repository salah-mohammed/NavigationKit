//
//  NavigationColorManager.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
//class Navigation{
//
//}
public protocol NavigationStyle{
    var style:Navigation.Style{set get}
}
public enum AppearanceType{
case  all(UINavigationBarAppearance)
case  cutome(standard:UINavigationBarAppearance?,scrollEdge:UINavigationBarAppearance?,compact:UINavigationBarAppearance?)
}
open class Navigation:NSObject{
    public enum Style{
    case hide
    // apperanceType , tintColor
        case custom(apperanceType:AppearanceType,tintColor:UIColor)
    }
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
    
    public var defaultStyle:Navigation.Style?{
        didSet{
            if navigationControllers.count == 0 {
                UIApplication.shared.swiftUINavigationController?.refrehStyle();
            }else{
            for navigationController in navigationControllers{
                navigationController.refrehStyle();
            }
            }
        }
    }
    private var navigationControllers:[UINavigationController]=[UINavigationController]();
   
    public static let shared: Navigation = { Navigation()} ()

override init() {
    super.init()
    
}
   open func readViewController(navigationStyle:NavigationStyle,_ navigationController:UINavigationController){
       self.read(style:navigationStyle.style,navigationController);
    }
    func read(style:Navigation.Style,_ navigationController:UINavigationController){
            switch style {
            case .hide:
                navigationController.navigationBar.isHidden=true;
                break;
            case .custom(let appearanceType, let tintColor):
                navigationController.navigationBar.isHidden=false;
                navigationController.navigationBar.tintColor=tintColor

                switch appearanceType {
            
                case .all(let appearance):
                navigationController.navigationBar.standardAppearance=appearance
                navigationController.navigationBar.scrollEdgeAppearance=appearance;
                navigationController.navigationBar.compactAppearance=appearance;

                    break;
                case .cutome(standard: let standard, scrollEdge: let scrollEdge, compact: let compact):
                    let appearance = UINavigationBarAppearance()
                        appearance.configureWithDefaultBackground()
                navigationController.navigationBar.standardAppearance=standard ?? appearance
                navigationController.navigationBar.scrollEdgeAppearance=scrollEdge ?? standard ?? appearance
                navigationController.navigationBar.compactAppearance=compact ?? standard ?? appearance
                }
        }
    }
    func addNavigationController(_ navigationController:UINavigationController){
        if self.navigationControllers.filter({$0 == navigationController}).first == nil {
            self.navigationControllers.append(navigationController);
        }
    }
    func removeNvigationController(_ navigationController:UINavigationController){
        self.navigationControllers.removeAll(where: {$0 == navigationController})
    }
}

