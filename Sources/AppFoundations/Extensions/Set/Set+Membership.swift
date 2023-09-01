//
//  Set+Membership.swift
//  
//
//  Created by Mark DiFranco on 2023-09-01.
//

import Foundation

public extension Set {

    /// Returns this ``Set`` with `element` inserted.
    /// - parameter element: The `Element` to insert.
    /// - returns: This ``Set`` with `element` inserted.
    func inserting(_ element: Element) -> Self {
        var mutatedSelf = self
        mutatedSelf.insert(element)
        return mutatedSelf
    }

    /// If the `element` is present in this ``Set``, it is removed. Otherwise, the `element` is inserted.
    /// - parameter element: The `Element` to insert.
    mutating func toggleMembership(_ element: Element) {
        if contains(element) {
            remove(element)
        } else {
            insert(element)
        }
    }
}
