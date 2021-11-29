//
//  NavigationKitEx.swift
//  NavigationKit
//
//  Created by Salah on 11/29/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import Foundation
import UIKit
extension UINavigationBar{
    func set(backgroundImage:UIImage?,backgroundColor:UIColor?,textAttributes:[NSAttributedString.Key : Any]?,tintColor:UIColor?){
        if #available(iOS 13.0, *) {
            
            
            let temp = UINavigationBarAppearance();
            let appearance = self.standardAppearance
            //
            appearance.configureWithDefaultBackground()
            // return line to default
            appearance.backgroundColor = temp.backgroundColor
            appearance.backgroundEffect = temp.backgroundEffect
            appearance.shadowColor = temp.shadowColor
            
            appearance.titleTextAttributes=textAttributes ?? [:]
            appearance.largeTitleTextAttributes=textAttributes ?? [:]
            appearance.backgroundColor = backgroundColor
            appearance.backgroundImage = backgroundImage?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0), resizingMode:.stretch) ?? UIImage()
            self.standardAppearance = appearance
            self.compactAppearance = appearance
            self.scrollEdgeAppearance = appearance

        } else {
        }
        
        //
        // return line to default
        self.shadowImage = UIImage()
        //
        self.titleTextAttributes = textAttributes ?? [:]
        if let backgroundImage:UIImage = backgroundImage{
        self.setBackgroundImage(backgroundImage.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0), resizingMode:.stretch) ?? UIImage(), for: .default)
        }else{
            self.setBackgroundImage(UIImage.init(), for: .default);
        }
        self.tintColor = tintColor
        self.barTintColor = backgroundColor
        self.isTranslucent = true
    
    }
    
    public func setTransparent(backgroundColor:UIColor?,textAttributes:[NSAttributedString.Key : Any]?,tintColor:UIColor?){
        if #available(iOS 13.0, *) {
            let appearance = self.standardAppearance
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = backgroundColor ?? .clear
            appearance.backgroundEffect = .none
            appearance.shadowColor = .clear
            appearance.titleTextAttributes=textAttributes ?? [:]
            appearance.largeTitleTextAttributes=textAttributes ?? [:]
            self.standardAppearance = appearance
            self.compactAppearance = appearance
            self.scrollEdgeAppearance = appearance
        } else {
        }
        self.titleTextAttributes = textAttributes ?? [:]
        self.tintColor = tintColor
        
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.barTintColor = backgroundColor ?? .clear
        
    }

}
extension NavigationManager {
    func read(_ viewController:UIViewController){
        if let viewController:NavigationDelegate=viewController as? NavigationDelegate{
        NavigationManager.shared.readViewController(navigationDelegate: viewController);
        }else if let defaultColor:NavigationData = NavigationManager.shared.defaultData{
            NavigationManager.shared.read(navigationColor:defaultColor)
        }
    }
}
