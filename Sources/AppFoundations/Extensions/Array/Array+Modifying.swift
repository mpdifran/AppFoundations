//
//  File.swift
//  
//
//  Created by Mark DiFranco on 2023-09-04.
//

import Foundation

public extension Array {

    /// Returns a new array with the provided `element` inserted.
    /// - parameter element: The element to insert.
    /// - returns: A new array with the provided `element` inserted.
    func inserting(_ element: Element) -> Self {
        self + [element]
    }
}
