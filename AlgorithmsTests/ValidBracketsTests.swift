//
//  ValidBracketsTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 07/07/23.
//

import XCTest
@testable import Algorithms

class ValidBracketsTests: XCTestCase {
    func testValidCasesSolution1() throws {
        XCTAssertEqual(ValidBrackets.option1(input: "()"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "(())"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "()()()"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "(((())))"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "()(((())))"), true)
                                        
        XCTAssertEqual(ValidBrackets.option1(input: "[]"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "{}"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "()[]{}"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "(){[]}"), true)
        XCTAssertEqual(ValidBrackets.option1(input: "{[()]}"), true)
    }
    
    func testInvalidCasesSolution1() throws {
//        XCTAssertEqual(ValidBrackets.option1(input: "()())("), false)
//        XCTAssertEqual(ValidBrackets.option1(input: "())("), false)
//        XCTAssertEqual(ValidBrackets.option1(input: ")()()("), false)
//        XCTAssertEqual(ValidBrackets.option1(input: ")))"), false)
//        XCTAssertEqual(ValidBrackets.option1(input: ")()("), false)
//
//        XCTAssertEqual(ValidBrackets.option1(input: "(}[]{)"), false)
//        XCTAssertEqual(ValidBrackets.option1(input: "{[()]"), false)
                
        XCTAssertEqual(ValidBrackets.option1(input: "{[}]"), false)
        XCTAssertEqual(ValidBrackets.option1(input: "{}[]"), false)
    }
    
    func testValidCasesSolution2() throws {
        XCTAssertEqual(ValidBrackets.solution2(input: "()"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "(())"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "()()()"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "(((())))"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "()(((())))"), true)
                                        
        XCTAssertEqual(ValidBrackets.solution2(input: "[]"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "{}"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "()[]{}"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "(){[]}"), true)
        XCTAssertEqual(ValidBrackets.solution2(input: "{[()]}"), true)
    }
    
    func testInvalidCasesSolution2() throws {
        XCTAssertEqual(ValidBrackets.solution2(input: "()())("), false)
        XCTAssertEqual(ValidBrackets.solution2(input: "())("), false)
        XCTAssertEqual(ValidBrackets.solution2(input: ")()()("), false)
        XCTAssertEqual(ValidBrackets.solution2(input: ")))"), false)
        XCTAssertEqual(ValidBrackets.solution2(input: ")()("), false)

        XCTAssertEqual(ValidBrackets.solution2(input: "(}[]{)"), false)
        XCTAssertEqual(ValidBrackets.solution2(input: "{[()]"), false)
        XCTAssertEqual(ValidBrackets.solution2(input: "{[}]"), false)
        //XCTAssertEqual(ValidBrackets.solution2(input: "{}[]"), false)
    }
}

