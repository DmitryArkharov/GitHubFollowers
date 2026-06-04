//
//  GHFButton.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 19/06/2022.
//

import UIKit

class GHFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(color: UIColor, title: String, systemImageName: String) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    
    private func configure() {
        configuration               = .filled()
        configuration?.cornerStyle  = .medium
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func set(color: UIColor, title: String, systemImageName: String) {
        configuration?.baseBackgroundColor  = color
        configuration?.baseForegroundColor  = .white
        configuration?.title                = title
        configuration?.image                = UIImage(systemName: systemImageName)
        configuration?.imagePlacement       = .leading
        configuration?.imagePadding         = 6
    }
}
