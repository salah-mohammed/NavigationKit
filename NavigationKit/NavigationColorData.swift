//
//  NavigationColorData.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
open class NavigationData{
   open var navigationStyle:NavigationStyleManager.NavigationStyle?
    public init(_ navigationStyle:NavigationStyleManager.NavigationStyle?) {
        self.navigationStyle=navigationStyle;
    }
}
