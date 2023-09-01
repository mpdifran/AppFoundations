//
//  Collection+Checks.swift
//  
//
//  Created by Mark DiFranco on 2023-09-01.
//

import Foundation

public extension Collection {

    /// Whether `self` is empty or not.
    /// - returns: `true` if `self` is not empty, `false` otherwise.
    var isNotEmpty: Bool { !isEmpty }
}
