//
//  Follower.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 27/06/2022.
//

import Foundation

struct Follower : Codable, Hashable {
    var login: String
    var avatarUrl: String
}
