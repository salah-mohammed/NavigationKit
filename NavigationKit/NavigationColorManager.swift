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

open class NavigationManager:NSObject{
//    var tabbarImplemntation = TabbarControllerImplemntation();
//    var navigationImplemntation = NavigationControllerImplemntation();

    public enum NavigationStyle{
    case hide
    case custom(BarColor,titleColor:UIColor)
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
            case .custom(let barColor,let textColor):
                self.navigationController?.navigationBar.isHidden=false;
                      switch barColor {
                      case .transparent:
                          self.navigationController?.navigationBar.setTransparent(backgroundColor: nil, textAttributes: [.foregroundColor:textColor], tintColor: nil);
                          break;
                      case .customColor(let color):
                          print("a");
//                          self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
//                          self.navigationController?.navigationBar.barTintColor=color
//                          self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
//                          self.navigationController?.navigationBar.isTranslucent = false
                          self.navigationController?.navigationBar.set(backgroundImage: nil, backgroundColor: color, textAttributes: [.foregroundColor:textColor], tintColor: nil);
                          break;
                      case .backgroundImage(let image):
                          self.navigationController?.navigationBar.set(backgroundImage: image, backgroundColor: nil, textAttributes: [.foregroundColor:textColor], tintColor: nil)
//                          self.navigationController?.navigationBar.setBackgroundImage(image.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0), resizingMode: .stretch), for: .default)
//                      self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
//                      self.navigationController?.navigationBar.isTranslucent = false
//                          break;
//
//                          }
//                     navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:textColor]
                     break;

            }
        }
    }
     }
}

