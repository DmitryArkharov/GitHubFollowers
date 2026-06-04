//
//  FavoriteCell.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 11/07/2022.
//

import UIKit

class FavoriteCell: UITableViewCell {

    static let reuseID  = "FavoriteCell"
    let avatarImageView = GHFAvatarImageView(frame: .zero)
    let usernameLabel   = GHFTitleLabel(textAlignment: .left, fontSize: 26)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favorite: Follower) {
        avatarImageView.dowloadAvatarImage(fromURL: favorite.avatarUrl)
        usernameLabel.text = favorite.login
    }
    
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        
        accessoryType           = .disclosureIndicator
        let padding: CGFloat    = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 2 * padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
