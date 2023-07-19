//
//  UniqueCharsTest.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 06/07/23.
//

import XCTest
@testable import Algorithms

class UniqueCharsTest: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(UniqueChars.option1(input: "A"), true)
        XCTAssertEqual(UniqueChars.option1(input: "AB"), true)
        XCTAssertEqual(UniqueChars.option1(input: "ABC"), true)
        
        XCTAssertEqual(UniqueChars.option1(input: "AAA"), false)
        XCTAssertEqual(UniqueChars.option1(input: "AABB"), false)
        XCTAssertEqual(UniqueChars.option1(input: "AABBZZ"), false)
    }
    
    func testResultsOption2() throws {
        XCTAssertEqual(UniqueChars.option2(input: "A"), true)
        XCTAssertEqual(UniqueChars.option2(input: "AB"), true)
        XCTAssertEqual(UniqueChars.option2(input: "ABC"), true)
        
        XCTAssertEqual(UniqueChars.option2(input: "AAA"), false)
        XCTAssertEqual(UniqueChars.option2(input: "AABB"), false)
        XCTAssertEqual(UniqueChars.option2(input: "AABBZZ"), false)
    }
    
    func testResultsOption3() throws {
        XCTAssertEqual(UniqueChars.option3(input: "A"), true)
        XCTAssertEqual(UniqueChars.option3(input: "AB"), true)
        XCTAssertEqual(UniqueChars.option3(input: "ABC"), true)
        
        XCTAssertEqual(UniqueChars.option3(input: "AAA"), false)
        XCTAssertEqual(UniqueChars.option3(input: "AABB"), false)
        XCTAssertEqual(UniqueChars.option3(input: "AABBZZ"), false)
    }
}
