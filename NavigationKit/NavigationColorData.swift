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
   open var navigationStyle:Navigation.Style?
    public init(_ navigationStyle:Navigation.Style?) {
        self.navigationStyle=navigationStyle;
    }
}
