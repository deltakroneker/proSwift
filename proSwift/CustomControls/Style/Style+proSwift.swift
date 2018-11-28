//
//  Style+proSwift.swift
//  base
//
//  Created by Nikola Milic on 9/18/18.
//  Copyright © 2018 Nikola Milic. All rights reserved.
//

import Foundation
import UIKit

extension Style {
    
    static var light: Style {
        return Style(
            backgroundColor: .painterlyBeige,
            preferredStatusBarStyle: .lightContent,
            attributesForTextType: { type in type.lightThemeAttributes }
        )
    }
    
    static var dark: Style {
        return Style(
            backgroundColor: .natureGreen,
            preferredStatusBarStyle: .lightContent,
            attributesForTextType: { type in type.darkThemeAttributes }
        )
    }
}

private extension Style.TextType {
    
    var lightThemeAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .defaultTitleFont, color: .painterlyPurple, backgroundColor: .painterlyGreen)
        case .title:
            return Style.TextAttributes(font: .defaultTitleFont, color: .painterlyPurple)
        case .subtitle:
            return Style.TextAttributes(font: .defaultSubtitleFont, color: .painterlyPurple)
        case .body:
            return Style.TextAttributes(font: .defaultBodyFont, color: .black)
        case .button:
            return Style.TextAttributes(font: .defaultSubtitleFont, color: .painterlyPurple, backgroundColor: .painterlyGreen)
        }
    }
    
    var darkThemeAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .defaultTitleFont, color: .natureRed, backgroundColor: .naturePurple)
        case .title:
            return Style.TextAttributes(font: .defaultTitleFont, color: .naturePurple)
        case .subtitle:
            return Style.TextAttributes(font: .defaultSubtitleFont, color: .naturePurple)
        case .body:
            return Style.TextAttributes(font: .defaultBodyFont, color: .black, backgroundColor: .white)
        case .button:
            return Style.TextAttributes(font: .defaultSubtitleFont, color: .white, backgroundColor: .natureRed)
        }
    }
    
}

extension UIColor {
    
    // Light theme colors
    static var painterlyPurple: UIColor {
        return UIColor(red: 0.26, green: 0.18, blue: 0.35, alpha: 1.0)
    }
    static var painterlyBeige: UIColor {
        return UIColor(red: 0.96, green: 0.93, blue: 0.91, alpha: 1.0)
    }
    static var painterlyGreen: UIColor {
        return UIColor(red: 0.78, green: 0.91, blue: 0.49, alpha: 1.0)
    }
    
    // Dark theme colors
    static var naturePurple: UIColor {
        return UIColor(red: 0.25, green: 0.19, blue: 0.26, alpha: 1.0)
    }
    static var natureGreen: UIColor {
        return UIColor(red: 0.45, green: 0.59, blue: 0.55, alpha: 1.0)
    }
    static var natureRed: UIColor {
        return UIColor(red: 0.65, green: 0.20, blue: 0.25, alpha: 1.0)
    }
}

extension UIFont {
    
    // Default font
    static var defaultTitleFont: UIFont {
        return UIFont.systemFont(ofSize: 28)
    }
    static var defaultSubtitleFont: UIFont {
        return UIFont.systemFont(ofSize: 22)
    }
    static var defaultBodyFont: UIFont {
        return UIFont.systemFont(ofSize: 15)
    }
}
