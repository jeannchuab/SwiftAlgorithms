//
//  MaxRepeatedWordsTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 30/08/23.
//

import XCTest
@testable import Algorithms

class MaxRepeatedWordsTests: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(MaxRepeatedWords.option1(input: "x", word: "x"), 1)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "xx", word: "x"), 2)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "xx", word: "xx"), 1)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "xxx", word: "x"), 3)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "hello", word: "hello"), 1)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "llll", word: "ll"), 3)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "aaxaa", word: "aa"), 2)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "hellohello", word: "ll"), 2)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "hellohello", word: "hello"), 2)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "hellohelloll", word: "ll"), 3)
        XCTAssertEqual(MaxRepeatedWords.option1(input: "apple banana apple banana banana apple banana banana", word: "banana"), 5)
    }
}
