//
//  Collection+Set.swift
//  
//
//  Created by Mark DiFranco on 2023-09-01.
//

import Foundation

public extension Collection where Element: Hashable {

    /// Creates a ``Set`` from the elements in `self`.
    func asSet() -> Set<Element> {
        Set(self)
    }
}
