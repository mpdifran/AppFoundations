//
//  Array+Unique.swift
//  
//
//  Created by Mark DiFranco on 2023-09-04.
//

import Foundation

public extension Array where Element: Equatable {

    mutating func madeUnique() {
        self = makingUnique()
    }

    func makingUnique() -> Self {
        reduce([]) { (partialResult, element) in
            if partialResult.contains(element) {
                return partialResult
            }
            return partialResult.inserting(element)
        }
    }
}
