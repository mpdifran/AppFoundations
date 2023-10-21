//
//  Dictionary+KeyConversion.swift
//
//
//  Created by Mark DiFranco on 2023-10-21.
//

import Foundation

public extension Dictionary {

    /// Converts `self` into a new dictionary with a different type of key.
    /// - parameter converter: The closure to use to convert the keys' types.
    /// - returns: A new dictionary, with the new type as the key.
    func convertKeys<NewKey>(_ converter: (Key) -> NewKey?) -> [NewKey : Value] {
        var newDictionary = [NewKey : Value]()

        keys.forEach { (key) in
            if let newKey = converter(key) {
                newDictionary[newKey] = self[key]
            }
        }

        return newDictionary
    }
}
