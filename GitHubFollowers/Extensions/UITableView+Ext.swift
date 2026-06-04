//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 17/07/2022.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
