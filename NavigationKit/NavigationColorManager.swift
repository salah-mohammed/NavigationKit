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
    var navigationColor:NavigationColorData{set get}
}

public class NavigationColorManager:NSObject{
    public var navigationController:UINavigationController?
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
   
public static let sharedInstance: NavigationColorManager = { NavigationColorManager()} ()

override init() {
    super.init()
    
}
   public func readViewController(navigationInfo:NavigationInfoDelegate){
        self.read(navigationColor:navigationInfo.navigationColor);
    }
    private func read(navigationColor:NavigationColorData){
        if let barColor:BarColor = navigationColor.barColor{
        switch navigationColor.barColor {
  
        case .transparent:
            transparentNav();
            break;

        case .customColor(let color):
            
            break;
        case .backgroundImage(let image):
        
            break;
        case .none:
            break;
            }
        }

    }
    func transparentNav(){
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.isTranslucent = true
    }
}
