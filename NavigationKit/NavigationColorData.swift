//
//  NavigationColorData.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
open class NavigationColorData{
   open var hideNavigation:NavigationColorManager.HideNavigation?
    public init(hideNavigation:NavigationColorManager.HideNavigation?) {
        self.hideNavigation=hideNavigation;
    }
}
