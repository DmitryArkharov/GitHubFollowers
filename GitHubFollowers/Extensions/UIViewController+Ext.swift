//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 23/06/2022.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGHFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GHFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle   = .overFullScreen
        alertVC.modalTransitionStyle     = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentDefaultError() {
        let alertVC = GHFAlertVC(title: "An error occurred",
                                 message: "unable to complete the task",
                                 buttonTitle: "Ok")
        alertVC.modalPresentationStyle   = .overFullScreen
        alertVC.modalTransitionStyle     = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    } 
}
