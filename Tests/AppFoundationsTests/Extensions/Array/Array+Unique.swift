//
//  Array+Unique.swift
//  
//
//  Created by Mark DiFranco on 2023-09-04.
//

import XCTest

final class Array_Unique: XCTestCase {

    var sut = [String]()

    func test_madeUnique_returnsUniqueElements() {
        // Arrange
        sut = ["One", "One", "Two", "One", "Three"]
        let expectedResult = ["One", "Two", "Three"]

        // Act
        sut.madeUnique()

        // Assert
        XCTAssertEqual(sut, expectedResult)
    }

    func test_makingUnique_returnsUniqueElements() {
        // Arrange
        sut = ["One", "One", "Two", "One", "Three"]
        let expectedResult = ["One", "Two", "Three"]

        // Act
        let result = sut.makingUnique()

        // Assert
        XCTAssertEqual(result, expectedResult)
    }

    func test_makingUnique_performance() {
        // Arrange
        sut = Array(repeating: "Hello World", count: 100_000)
        let expectedResult = ["Hello World"]

        // Act
        self.measure {
            let result = sut.makingUnique()

            // Assert
            XCTAssertEqual(result, expectedResult)
        }
    }
}
