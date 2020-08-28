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
   open var navigationStyle:NavigationManager.NavigationStyle?
    public init(_ navigationStyle:NavigationManager.NavigationStyle?) {
        self.navigationStyle=navigationStyle;
    }
}
