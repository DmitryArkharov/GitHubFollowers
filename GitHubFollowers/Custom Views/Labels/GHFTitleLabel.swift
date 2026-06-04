//
//  GHFLabel.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 23/06/2022.
//

import UIKit

class GHFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment   = textAlignment
        self.font            = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    
    private func configure() {
        textColor                  = .label
        adjustsFontSizeToFitWidth  = true
        minimumScaleFactor         = 0.9
        lineBreakMode              = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
