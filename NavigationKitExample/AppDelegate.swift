//
//  AppDelegate.swift
//  NavigationKitExample
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

class AppStyle:NSObject{
    static var backImage:UIImage = UIImage.init(named:"ic_backImage") ?? UIImage.init()
    

    static func cutomeInit()->UINavigationBarAppearance{
    let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
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
