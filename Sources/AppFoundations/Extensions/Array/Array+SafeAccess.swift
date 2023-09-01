//
//  Array+SafeAccess.swift
//  
//
//  Created by Mark DiFranco on 2023-09-01.
//

import Foundation

public extension Array {

    /// Returns the element at `index`, or nil if `index` is out of the bounds.
    /// - parameter index: The index of the element to access.
    /// - returns: The element at the given index, or `nil` if the index is out of bounds.
    func safeAccess(at index: UInt) -> Element? {
        guard count > index else { return nil }

        return self[Int(index)]
    }
}
