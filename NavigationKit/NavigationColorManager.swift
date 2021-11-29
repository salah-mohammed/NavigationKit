//
//  NavigationColorManager.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
public protocol NavigationDelegate{
    var navigationData:NavigationData{set get}
}
public enum AppearanceType{
case  standard(UINavigationBarAppearance)
case  scrollEdge(UINavigationBarAppearance)
case  compact(UINavigationBarAppearance)
case  all(UINavigationBarAppearance)

}
open class NavigationManager:NSObject{
//    var tabbarImplemntation = TabbarControllerImplemntation();
//    var navigationImplemntation = NavigationControllerImplemntation();

    public enum NavigationStyle{
    case hide
    case custom(AppearanceType)
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
    private var navigationBarShadowImage:UIImage?
    
    public var navigationController:NavigationController?{
        didSet{
            navigationBarShadowImage=self.navigationController?.navigationBar.shadowImage;
        }
    }
   
    public static let shared: NavigationManager = { NavigationManager()} ()

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
            case .custom(let appearance):
                self.navigationController?.navigationBar.isHidden=false;
                self.navigationController?.navigationBar.standardAppearance=appearance
                self.navigationController?.navigationBar.scrollEdgeAppearance=appearance;
        }
    }
     }
}

