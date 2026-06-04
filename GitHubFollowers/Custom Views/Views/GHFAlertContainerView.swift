//
//  GHFAlertContainer.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 14/07/2022.
//

import UIKit

class GHFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        backgroundColor      = .systemBackground
        layer.cornerRadius   = 10
        layer.borderWidth    = 2
        layer.borderColor    = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
