//
//  PermutationTest.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 06/07/23.
//

import XCTest
@testable import Algorithms

class PermutationTest: XCTestCase {
    func testResultsOption1() throws {
        XCTAssertEqual(Permutation.option1(input1: "A", input2: "A"), true)
        XCTAssertEqual(Permutation.option1(input1: "AB", input2: "BA"), true)
        XCTAssertEqual(Permutation.option1(input1: "ABC", input2: "ACB"), true)
        XCTAssertEqual(Permutation.option1(input1: "AAAABC", input2: "ACBAAA"), true)
        
        XCTAssertEqual(Permutation.option1(input1: "AAA", input2: "A"), false)
        XCTAssertEqual(Permutation.option1(input1: "AAA", input2: "C"), false)
        XCTAssertEqual(Permutation.option1(input1: "AAA", input2: "AA"), false)
    }
    
    func testResultsOption2() throws {
//        XCTAssertEqual(Permutation.option2(input1: "A", input2: "A"), true)
        XCTAssertEqual(Permutation.option2(input1: "AB", input2: "BA"), true)
        XCTAssertEqual(Permutation.option2(input1: "ABC", input2: "ACB"), true)
        XCTAssertEqual(Permutation.option2(input1: "AAAABC", input2: "ACBAAA"), true)
        
        XCTAssertEqual(Permutation.option2(input1: "AAA", input2: "A"), false)
        XCTAssertEqual(Permutation.option2(input1: "AAA", input2: "C"), false)
        XCTAssertEqual(Permutation.option2(input1: "AAA", input2: "AA"), false)
    }
    
    func testResultsOption3() throws {
        XCTAssertEqual(Permutation.option3(input1: "A", input2: "A"), true)
        XCTAssertEqual(Permutation.option3(input1: "AB", input2: "BA"), true)
        XCTAssertEqual(Permutation.option3(input1: "ABC", input2: "ACB"), true)
        XCTAssertEqual(Permutation.option3(input1: "AAAABC", input2: "ACBAAA"), true)
        
        XCTAssertEqual(Permutation.option3(input1: "AAA", input2: "A"), false)
        XCTAssertEqual(Permutation.option3(input1: "AAA", input2: "C"), false)
        XCTAssertEqual(Permutation.option3(input1: "AAA", input2: "AA"), false)
    }
}
