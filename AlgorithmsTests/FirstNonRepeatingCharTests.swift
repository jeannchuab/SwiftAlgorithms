//
//  FirstNonRepeatingCharTests.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 07/05/25.
//

import XCTest
@testable import Algorithms

class FirstNonRepeatingCharTests: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "abaaaaa"), "b")
        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "aaaaaaaaax"), "x")
        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "alphabet"), "l")
//        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "a"), 1)
//        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "a"), 1)
//        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "a"), 1)
//        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "a"), 1)
//        XCTAssertEqual(FirstNonRepeatingChar.option1(input: "a"), 1)
    }
}
