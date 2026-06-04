//
//  GHFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 27/06/2022.
//

import UIKit

class GHFAvatarImageView: UIImageView {
    
    let cache               = NetworkManager.shared.cache
    let placeholderImage    = Images.avatarPlaceholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius   = 10
        clipsToBounds        = true
        image                = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func dowloadAvatarImage(fromURL url: String) {
        Task { image = await NetworkManager.shared.downloadImage(from: url) ?? placeholderImage }
    }
}
