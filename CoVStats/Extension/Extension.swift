//
//  Extension.swift
//  CoVStats
//
//  Created by Robert Pelz on 24.08.20.
//  Copyright © 2020 Robert Pelz. All rights reserved.
//

import Foundation

extension Int {
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.decimalSeparator = ","
        formatter.groupingSeparator = "."
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}

extension Int64 {
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.decimalSeparator = ","
        formatter.groupingSeparator = "."
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}
