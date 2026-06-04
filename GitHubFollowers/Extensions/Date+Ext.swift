//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by dmitry arkharov on 09/07/2022.
//

import Foundation

extension Date {
// The old version of DateFormatter:
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter        = DateFormatter()
//        dateFormatter.dateFormat = "MMM yyyy"
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
