//
//  GHFError.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 02/07/2022.
//

import Foundation

enum GHFError: String, Error {
    
    case invalidUsername    = "This username created an invalid request. Please, try again."
    case unableToComplete   = "Unable to complete your request. Please, heck your internet connection."
    case invalidResponse    = "Invalid response from the server. Please, try again."
    case invalidData        = "Invalid data from the server. Please, try again."
    
    case unableToFavorite   = "There was an error while trying to save the user into list of favorites. 😳"
    case alreadyInFavorites = "This user is already in your favorites! 🤓"
}
