//
//  NavigationColorManager.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
public protocol NavigationInfoDelegate{
    var navigationColor:NavigationData{set get}
}

open class NavigationStyleManager:NSObject{
    public enum NavigationStyle{
    case hide
    case custom(BarColor,textColor:UIColor)
    }
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
    
    public var defaultColor:NavigationData?{
        didSet{
            self.navigationController?.refrehNavigationInfoVisibleViewController();
        }
    }
    private var navigationBarShadowImage:UIImage?
    
    public var navigationController:NavigationController?{
        didSet{
            navigationBarShadowImage=self.navigationController?.navigationBar.shadowImage;
        }
    }
   
    public static let sharedInstance: NavigationStyleManager = { NavigationStyleManager()} ()

override init() {
    super.init()
    
}
   open func readViewController(navigationInfo:NavigationInfoDelegate){
        self.read(navigationColor:navigationInfo.navigationColor);
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
                          transparentNav();
                          break;
                      case .customColor(let color):
                          self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
                          self.navigationController?.navigationBar.barTintColor=color
                          self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
                          self.navigationController?.navigationBar.isTranslucent = false
                          break;
                      case .backgroundImage(let image):
                          self.navigationController?.navigationBar.setBackgroundImage(image.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0), resizingMode: .stretch), for: .default)
                      self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
                      self.navigationController?.navigationBar.isTranslucent = false
                          break;
 
                          }
                     navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:textColor]
                     break;

            }
            }

    }
    func transparentNav(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
}
