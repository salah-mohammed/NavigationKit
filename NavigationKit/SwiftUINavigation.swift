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
            let navigationBar = UIApplication.shared.swiftUINavigationController?.navigationBar
            if let navigationBar:UINavigationBar = navigationBar{
                navigationBar.isHidden=true;
            }else{
                UINavigationBar.appearance().isHidden=true;
            }
            break;
        case .custom(apperanceType: let apperanceType, tintColor: let tintColor):

            switch apperanceType{
            case .all(let value):
                let navigationBar = UIApplication.shared.swiftUINavigationController?.navigationBar
                if let navigationBar:UINavigationBar = navigationBar{
                    navigationBar.standardAppearance = value
                    navigationBar.scrollEdgeAppearance = value
                    navigationBar.compactAppearance = value
                    navigationBar.isHidden=false;
                }else{
                    UINavigationBar.appearance().standardAppearance = value
                    UINavigationBar.appearance().scrollEdgeAppearance = value
                    UINavigationBar.appearance().compactAppearance = value
                    if #available(iOS 15.0, *) {
                        UINavigationBar.appearance().compactScrollEdgeAppearance = value
                    } else {
                        // Fallback on earlier versions
                    }
                    UINavigationBar.appearance().isHidden=false;

                }
                break;
            case .cutome(standard: let standard, scrollEdge: let scrollEdge, compact: let compact, let compactScrollEdgeAppearance):
                let navigationBar = UIApplication.shared.swiftUINavigationController?.navigationBar
                if let navigationBar:UINavigationBar = navigationBar{
                    navigationBar.standardAppearance = standard ?? UINavigationBarAppearance()
                    navigationBar.scrollEdgeAppearance = scrollEdge
                    navigationBar.compactAppearance = compact
                    if #available(iOS 15.0, *) {
                        navigationBar.compactScrollEdgeAppearance = compactScrollEdgeAppearance
                    } else {
                        // Fallback on earlier versions
                    }
                    navigationBar.isHidden=false;
                }else{
                    UINavigationBar.appearance().standardAppearance = standard ?? UINavigationBarAppearance()
                    UINavigationBar.appearance().scrollEdgeAppearance = scrollEdge
                    UINavigationBar.appearance().compactAppearance = compact
                    UINavigationBar.appearance().compactAppearance = compactScrollEdgeAppearance
                    UINavigationBar.appearance().isHidden=false;
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
