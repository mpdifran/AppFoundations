//
//  NSError+LocalizedDescription.swift
//
//
//  Created by Mark DiFranco on 2023-11-29.
//

import Foundation

public extension NSError {

    convenience init(domain: String = "AppFoundations", description: String) {
        self.init(domain: domain, code: 0, userInfo: [NSLocalizedDescriptionKey : description])
    }
}
