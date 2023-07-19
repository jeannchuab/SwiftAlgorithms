//
//  EvenOddArrayTest.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 19/07/23.
//

import XCTest
@testable import Algorithms

class EvenOddArrayTest: XCTestCase {

    //TODO: Implement test cases for other solutions
    
    func testValidCasesSolution5_Case01() throws {
        let input = [1,0]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0,1])
    }
    
    func testValidCasesSolution5_Case02() throws {
        let input = [0,1,2,3]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0,2,1,3])
    }
    
    func testValidCasesSolution5_Case03() throws {
        let input = [0,1,2]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0,2,1])
    }
    
    func testValidCasesSolution5_Case04() throws {
        let input = [0]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0])
    }
    
    func testValidCasesSolution5_Case05() throws {
        let input = [0]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0])
    }
    
    func testValidCasesSolution5_Case06() throws {
        let input: [Int] = []
        XCTAssertEqual(EvenOddArray.solution5(input: input), [])
    }
    
    func testValidCasesSolution5_Case07() throws {
        let input: [Int] = [0,1,2,3,4,5,6,7,8,9]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0,8,2,6,4,5,3,7,1,9])
    }
    
    func testValidCasesSolution5_Case08() throws {
        let input: [Int] = [0,1,2,3,4,5,6,7,8]
        XCTAssertEqual(EvenOddArray.solution5(input: input), [0,8,2,6,4,5,3,7,1])
    }
}
