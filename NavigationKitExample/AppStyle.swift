//
//  AppStyle.swift
//  NavigationKitExample
//
//  Created by Salah on 11/30/21.
//  Copyright © 2021 Salah. All rights reserved.
//

import UIKit

class AppStyle:NSObject{
    static var backImage:UIImage = UIImage.init(named:"ic_backImage") ?? UIImage.init()
    
    static func cutomeInit()->UINavigationBarAppearance{
    let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
//        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
     return appearance
    }
    static var defaultBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundColor = UIColor.red
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white];
        return appearance;
    }()
    static var greenBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundColor = UIColor.green
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white];
        
        return appearance;
    }()
    static var redBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundColor = UIColor.red
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white];
        return appearance;
    }()
    static var yelloBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundColor = UIColor.yellow
        appearance.titleTextAttributes = [.foregroundColor:UIColor.black];
        return appearance;
    }()
    static var transparentBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundColor = .clear
        appearance.backgroundEffect = .none
        appearance.shadowColor = .clear
        appearance.titleTextAttributes = [:]
        appearance.largeTitleTextAttributes = [:]
        return appearance;
    }()
    static var backgroundImageBarStyle:UINavigationBarAppearance = {
        let appearance = AppStyle.cutomeInit()
        appearance.backgroundEffect = .none
        appearance.shadowColor = .clear
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        appearance.backgroundImage = UIImage.init(named:"navigationImage")?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0 ,right: 0), resizingMode:.stretch) ?? UIImage()
        
        return appearance;
    }()
}
