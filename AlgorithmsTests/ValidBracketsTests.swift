//
//  ValidBracketsTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 07/07/23.
//

import XCTest
@testable import Algorithms

class ValidBracketsTests: XCTestCase {
    func test() throws {
        XCTAssertEqual(ValidBrackets.option1(input: "(())"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "()()()"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "(((())))"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "()(((())))"), true)
        
        XCTAssertEqual(ValidBrackets.option1(input: "()())("), false)
        XCTAssertEqual(ValidBrackets.option1(input: "())("), false)
        XCTAssertEqual(ValidBrackets.option1(input: ")()()("), false)
        XCTAssertEqual(ValidBrackets.option1(input: ")))"), false)
        XCTAssertEqual(ValidBrackets.option1(input: ")()("), false)
    }
}

