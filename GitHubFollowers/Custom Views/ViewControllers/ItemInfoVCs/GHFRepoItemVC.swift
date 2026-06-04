//
//  GHFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 03/07/2022.
//

import UIKit

protocol GHFRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GHFRepoItemVC: GHFItemInfoVC {
    
    weak var delegate: GHFRepoItemVCDelegate!
    
    
    init(user: User, delegate: GHFRepoItemVCDelegate) {
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
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(color: .systemPurple, title: "GitHub Profile", systemImageName: "person")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
