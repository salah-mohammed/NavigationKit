//
//  SwiftUINavigation.swift
//  NavigationKit
//
//  Created by Salah on 6/12/22.
//  Copyright © 2022 Salah. All rights reserved.
//

import Foundation
import SwiftUI

struct NavigationBarModifier: ViewModifier {

    var style: Navigation.Style!

    init(style: Navigation.Style) {
        switch style{
        case .hide:
            break;
        case .custom(apperanceType: let apperanceType, tintColor: let tintColor):
            switch apperanceType{
            case .all(let value):
                let navigationBar = UIApplication.shared.bs_swiftUINavigationController?.navigationBar
                if let navigationBar:UINavigationBar = navigationBar{
                    navigationBar.standardAppearance = value
                    navigationBar.scrollEdgeAppearance = value
                    navigationBar.compactAppearance = value
                }else{
                    UINavigationBar.appearance().standardAppearance = value
                    UINavigationBar.appearance().scrollEdgeAppearance = value
                    UINavigationBar.appearance().compactAppearance = value
                }
                break;
            case .cutome(standard: let standard, scrollEdge: let scrollEdge, compact: let compact):
                
                
                let navigationBar = UIApplication.shared.bs_swiftUINavigationController?.navigationBar
                if let navigationBar:UINavigationBar = navigationBar{
                    navigationBar.standardAppearance = standard ?? UINavigationBarAppearance()
                    navigationBar.scrollEdgeAppearance = scrollEdge
                    navigationBar.compactAppearance = compact
                }else{
                    UINavigationBar.appearance().standardAppearance = standard ?? UINavigationBarAppearance()
                    UINavigationBar.appearance().scrollEdgeAppearance = scrollEdge
                    UINavigationBar.appearance().compactAppearance = compact
                }
            }
            UINavigationBar.appearance().tintColor=tintColor;
            break;
        }
    }

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Spacer()
                }
            }
        }
    }
}
extension View {
    public func navigationBarStyle(style:Navigation.Style) -> some View {
        self.modifier(NavigationBarModifier.init(style: style))
    }

}
