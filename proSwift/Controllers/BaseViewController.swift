//
//  BaseViewController.swift
//  proSwift
//
//  Created by Nikola Milic on 11/13/18.
//  Copyright © 2018 Nikola Milic. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var style: Style! = Style.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func applyStyle() {
        view.backgroundColor = style.backgroundColor
        if let navBar = navigationController?.navigationBar {
            style.applyStyle(to: navBar)
        }
    }
}
