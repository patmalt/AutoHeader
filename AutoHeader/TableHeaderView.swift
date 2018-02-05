//
//  TableHeaderView.swift
//  AutoHeader
//
//  Created by Patrick Maltagliati on 2/4/18.
//  Copyright © 2018 Patrick Maltagliati. All rights reserved.
//

import UIKit

class TableHeaderView: UIView {
    private let animatingView = AnimatingView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private let spacing: CGFloat = 20
    
    init() {
        super.init(frame: .zero)
        
        clipsToBounds = true
        
        titleLabel.text = "This is my title, isn't it great"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        
        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer diam purus, lacinia non elit sed, hendrerit iaculis libero. Etiam bibendum eleifend tortor eget aliquam. Morbi nibh sapien, maximus et facilisis ac, molestie et sapien. Phasellus in congue tortor. Pellentesque lacinia nec tortor quis porta. Duis sodales turpis justo, nec ullamcorper lectus vehicula sit amet. Nullam auctor venenatis lorem eu ultrices. Vivamus facilisis nulla in turpis vestibulum, ac placerat lorem euismod."
        subtitleLabel.numberOfLines = 0
        subtitleLabel.font = UIFont.systemFont(ofSize: 15)
        subtitleLabel.textAlignment = .center
        
        addSubview(animatingView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        animatingView.translatesAutoresizingMaskIntoConstraints = false
        animatingView.topAnchor.constraint(equalTo: topAnchor, constant: spacing).activate()
        animatingView.leftAnchor.constraint(equalTo: leftAnchor, constant: spacing).activate()
        animatingView.rightAnchor.constraint(equalTo: rightAnchor, constant: -spacing).setPriority(.required - 1).activate()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: animatingView.bottomAnchor, constant: spacing).activate()
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: spacing).activate()
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -spacing).setPriority(.required - 1).activate()
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: spacing).activate()
        subtitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: spacing).activate()
        subtitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -spacing).setPriority(.required - 1).activate()
        subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -spacing).setPriority(.required - 1).activate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        subtitleLabel.preferredMaxLayoutWidth = subtitleLabel.bounds.width
    }
}

class AnimatingView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .purple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 300, height: 120)
    }
}
