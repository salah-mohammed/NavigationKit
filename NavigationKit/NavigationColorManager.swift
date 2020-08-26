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

open class NavigationColorManager:NSObject{
    private var navigationBarShadowImage:UIImage?
    
    public var navigationController:UINavigationController?{
        didSet{
            navigationBarShadowImage=self.navigationController?.navigationBar.shadowImage;
        }
    }
    public enum BarColor{
    case transparent
    case customColor(UIColor)
    case backgroundImage(UIImage)
    }
   
    public static let sharedInstance: NavigationColorManager = { NavigationColorManager()} ()

override init() {
    super.init()
    
}
   open func readViewController(navigationInfo:NavigationInfoDelegate){
        self.read(navigationColor:navigationInfo.navigationColor);
    }
    private func read(navigationColor:NavigationColorData){
        if let barColor:BarColor = navigationColor.barColor{
        switch navigationColor.barColor {
  
        case .transparent:
            transparentNav();
            break;

        case .customColor(let color):
            self.navigationController?.navigationBar.barTintColor=color
            self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
            self.navigationController?.navigationBar.isTranslucent = false
            break;
        case .backgroundImage(let image):
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.shadowImage = self.navigationBarShadowImage;
        self.navigationController?.navigationBar.isTranslucent = false
            break;
        case .none:
            break;
            }
        }
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:navigationColor.textColor]
    }
    func transparentNav(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
}
