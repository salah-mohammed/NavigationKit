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
    var navigationData:NavigationData{set get}
}
public enum AppearanceType{
case  all(UINavigationBarAppearance)
case  cutome(standard:UINavigationBarAppearance,scrollEdge:UINavigationBarAppearance,compact:UINavigationBarAppearance)
}
open class Navigation:NSObject{
    public enum NavigationStyle{
    case hide
    // apperanceType , tintColor
    case custom(AppearanceType,UIColor)
    }
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
    
    public var defaultData:NavigationData?{
        didSet{
            self.navigationController?.refrehNavigationData();
        }
    }
    public var navigationController:NavigationController?
   
    public static let shared: Navigation = { Navigation()} ()

override init() {
    super.init()
    
}
   open func readViewController(navigationDelegate:NavigationDelegate){
        self.read(navigationColor:navigationDelegate.navigationData);
    }
     func read(navigationColor:NavigationData){
        if let navigationStyle:NavigationStyle = navigationColor.navigationStyle{
            switch navigationStyle {
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
                    self.navigationController?.navigationBar.standardAppearance=standard
                    self.navigationController?.navigationBar.scrollEdgeAppearance=scrollEdge;
                    self.navigationController?.navigationBar.compactAppearance=compact;
                }
                

        }
    }
     }
}

