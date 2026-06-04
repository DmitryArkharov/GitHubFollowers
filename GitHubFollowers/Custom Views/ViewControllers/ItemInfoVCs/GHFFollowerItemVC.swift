//
//  GHFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 03/07/2022.
//

import UIKit

protocol GHFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GHFFollowerItemVC: GHFItemInfoVC {
    
    weak var delegate: GHFFollowerItemVCDelegate!
    
    
    init(user: User, delegate: GHFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
