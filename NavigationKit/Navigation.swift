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
public protocol NavigationDelegate{
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
    case custom(AppearanceType,UIColor)
    }
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
    
    public var defaultStyle:Navigation.Style?{
        didSet{
            self.navigationController?.refrehStyle();
        }
    }
    public var navigationController:NavigationController?
   
    public static let shared: Navigation = { Navigation()} ()

override init() {
    super.init()
    
}
   open func readViewController(navigationDelegate:NavigationDelegate){
       self.read(style:navigationDelegate.style);
    }
     func read(style:Navigation.Style){
            switch style {
            case .hide:
                self.navigationController?.navigationBar.isHidden=true;
                break;
            case .custom(let appearanceType, let tintColor):
                self.navigationController?.navigationBar.isHidden=false;
                self.navigationController?.navigationBar.tintColor=tintColor

                switch appearanceType {
            
                case .all(let appearance):
                    self.navigationController?.navigationBar.standardAppearance=appearance
                    self.navigationController?.navigationBar.scrollEdgeAppearance=appearance;
                    self.navigationController?.navigationBar.compactAppearance=appearance;

                    break;
                case .cutome(standard: let standard, scrollEdge: let scrollEdge, compact: let compact):
                    let appearance = UINavigationBarAppearance()
                        appearance.configureWithDefaultBackground()
                    self.navigationController?.navigationBar.standardAppearance=standard ?? appearance
                    self.navigationController?.navigationBar.scrollEdgeAppearance=scrollEdge ?? standard ?? appearance
                    self.navigationController?.navigationBar.compactAppearance=compact ?? standard ?? appearance
                }
        }
    }
}

