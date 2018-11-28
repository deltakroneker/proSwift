//
//  Style.swift
//  base
//
//  Created by Nikola Milic on 9/18/18.
//  Copyright © 2018 Nikola Milic. All rights reserved.
//

import Foundation
import UIKit

class Style {
    enum TextType {
        case navigationBar
        case title
        case subtitle
        case body
        case button
    }
    
    struct TextAttributes {
        let font: UIFont
        let color: UIColor
        let backgroundColor: UIColor?
        
        init(font: UIFont, color: UIColor, backgroundColor: UIColor = .clear) {
            self.font = font
            self.color = color
            self.backgroundColor = backgroundColor
        }
    }
    
    // MARK: - General Properties
    
    let backgroundColor: UIColor
    let preferredStatusBarStyle: UIStatusBarStyle
    
    let attributesForTextType: (_ type: TextType) -> TextAttributes
    
    init(backgroundColor: UIColor,
         preferredStatusBarStyle: UIStatusBarStyle = .default,
         attributesForTextType: @escaping (_ type: TextType) -> TextAttributes) {
        
        self.backgroundColor = backgroundColor
        self.preferredStatusBarStyle = preferredStatusBarStyle
        self.attributesForTextType = attributesForTextType
    }
    
    // MARK: - Convenience Getters
    
    func font(for type: TextType) -> UIFont {
        return attributesForTextType(type).font
    }
    
    func color(for type: TextType) -> UIColor {
        return attributesForTextType(type).color
    }
    
    func backgroundColor(for type: TextType) -> UIColor? {
        return attributesForTextType(type).backgroundColor
    }
    
    // MARK: - Applying style to UI elements
    
    func applyStyle(textType: TextType, to label: UILabel) {
        let attributes = attributesForTextType(textType)
        label.font = attributes.font
        label.textColor = attributes.color
        label.backgroundColor = attributes.backgroundColor
    }
    
    func applyStyle(textType: TextType = .button, to button: UIButton) {
        let attributes = attributesForTextType(textType)
        button.setTitleColor(attributes.color, for: .normal)
        button.titleLabel?.font = attributes.font
        button.backgroundColor = attributes.backgroundColor
    }
    
    func applyStyle(textType: TextType = .navigationBar, to navigationBar: UINavigationBar) {
        let attributes = attributesForTextType(textType)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key(NSAttributedString.Key.font.rawValue) : attributes.font,
            NSAttributedString.Key(NSAttributedString.Key.foregroundColor.rawValue) : attributes.color
        ]
        
        if let color = attributes.backgroundColor {
            navigationBar.barTintColor = color
        }
        
        navigationBar.tintColor = attributes.color
        navigationBar.barStyle = preferredStatusBarStyle == .default ? .default : .black
    }
}

