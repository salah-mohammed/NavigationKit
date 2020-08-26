//
//  NavigationColorData.swift
//  NavigationKit
//
//  Created by Salah on 8/26/20.
//  Copyright © 2020 Salah. All rights reserved.
//

import Foundation
import UIKit
public class NavigationColorData{
   public var barColor:NavigationColorManager.BarColor?
   public var textColor:UIColor?

    public init(barColor:NavigationColorManager.BarColor?,textColor:UIColor?) {
        self.barColor=barColor;
        self.textColor=textColor;
    }
}
