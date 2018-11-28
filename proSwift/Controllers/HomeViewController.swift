//
//  HomeViewController.swift
//  proSwift
//
//  Created by Nikola Milic on 11/12/18.
//  Copyright © 2018 Nikola Milic. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    override func loadView() {
        self.view = HomeView(with: self.style)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyStyle()
    }
    
}
