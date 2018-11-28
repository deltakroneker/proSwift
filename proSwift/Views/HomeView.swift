//
//  HomeView.swift
//  proSwift
//
//  Created by Nikola Milic on 11/12/18.
//  Copyright © 2018 Nikola Milic. All rights reserved.
//

import UIKit

class HomeView: UIView {

    var style: Style?
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title label"
        label.textAlignment = .center
        if let style = self.style {
            style.applyStyle(textType: .title, to: label)
        }
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Subtitle label"
        label.textAlignment = .center
        if let style = self.style {
            style.applyStyle(textType: .subtitle, to: label)
        }
        return label
    }()
    
    lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amanet."
        label.textAlignment = .center
        if let style = self.style {
            style.applyStyle(textType: .body, to: label)
        }
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        if let style = self.style {
            style.applyStyle(textType: .button, to: button)
        }
        return button
    }()
    
    // MARK: - Initializers
    
    convenience init(with style: Style?) {
        self.init(frame: .zero)
        self.style = style
        
        [titleLabel, subtitleLabel, bodyLabel, button].forEach( {
            addSubview($0)
        })
        
        setupConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        titleLabel.anchorCenter(centerX: centerXAnchor)
        titleLabel.anchorEdge(top: topAnchor,
                              leading: leadingAnchor,
                              trailing: trailingAnchor,
                              padding: UIEdgeInsets(top: 200, left: 16, bottom: 0, right: 16))
        
        subtitleLabel.anchorCenter(centerX: centerXAnchor)
        subtitleLabel.anchorEdge(top: titleLabel.bottomAnchor,
                                 leading: leadingAnchor,
                                 trailing: trailingAnchor,
                                 padding: UIEdgeInsets(top: 15, left: 16, bottom: 0, right: 16))
        
        bodyLabel.anchorCenter(centerX: centerXAnchor)
        bodyLabel.anchorEdge(top: subtitleLabel.bottomAnchor,
                                 leading: leadingAnchor,
                                 trailing: trailingAnchor,
                                 padding: UIEdgeInsets(top: 15, left: 16, bottom: 0, right: 16))
        
        button.anchorCenter(centerX: centerXAnchor)
        button.anchorSize(width: 150, height: 60)
        button.anchorEdge(top: bodyLabel.bottomAnchor,
                          padding: UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0))
    }
    
}
