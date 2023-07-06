//
//  URLifyTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 06/07/23.
//

import XCTest
@testable import Algorithms

class URLifyTest: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(URLify.option1(input: "A"), "A")
        XCTAssertEqual(URLify.option1(input: "A B"), "A%20B")
        XCTAssertEqual(URLify.option1(input: "A B C "), "A%20B%20C")
    }
    
    func testResultsOption2() throws {
        XCTAssertEqual(URLify.option2(input: "A"), "A")
        XCTAssertEqual(URLify.option2(input: "A B"), "A%20B")
        XCTAssertEqual(URLify.option2(input: "A B C "), "A%20B%20C")
    }
    
//    func testResultsOption3() throws {
////        XCTAssertEqual(URLify.option3(input: "A"), "A")
//        XCTAssertEqual(URLify.option3(input: "A B"), "A%20B")
//        XCTAssertEqual(URLify.option3(input: "A B C "), "A%20B%20C%20")
//    }
}
