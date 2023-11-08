//
//  LongestDistinctRouteTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 24/10/23.
//

import XCTest
@testable import Algorithms

final class LongestDistinctRouteTests: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(LongestDistinctRoute.option1(input: "xxxx"), 1)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "xxx"), 1)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "Xx"), 2)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "X_x"), 3)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "AAABBB"), 2)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "ABCDE"), 5)
        XCTAssertEqual(LongestDistinctRoute.option1(input: "ABCDEABCDE"), 5)
    }
    
    func testResultsOption2() throws {
        XCTAssertEqual(LongestDistinctRoute.option2(input: "xxxx"), 1)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "xxx"), 1)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "Xx"), 2)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "X_x"), 3)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "AAABBB"), 2)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "ABCDE"), 5)
        XCTAssertEqual(LongestDistinctRoute.option2(input: "ABCDEABCDE"), 5)
    }
}
