//
//  PalindromeTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 19/07/23.
//

import XCTest
@testable import Algorithms

class PalindromeTests: XCTestCase {

    func testValidCasesSolution1_Case01() throws {
        let input = "a"
        XCTAssertEqual(Palindrome.solution1(input: input), true)
    }
    
    func testValidCasesSolution1_Case02() throws {
        let input = ""
        XCTAssertEqual(Palindrome.solution1(input: input), true)
    }
    
    func testValidCasesSolution1_Case03() throws {
        let input = "aa"
        XCTAssertEqual(Palindrome.solution1(input: input), true)
    }
    
    func testValidCasesSolution1_Case04() throws {
        let input = "aba"
        XCTAssertEqual(Palindrome.solution1(input: input), true)
    }
    
    func testValidCasesSolution1_Case05() throws {
        let input = "abba"
        XCTAssertEqual(Palindrome.solution1(input: input), true)
    }

}
