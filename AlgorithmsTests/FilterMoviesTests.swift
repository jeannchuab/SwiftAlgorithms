//
//  FilterMoviesTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 10/07/23.
//

import XCTest
@testable import Algorithms

class FilterMoviesTests: XCTestCase {
    func testValidCasesSolution1_RemoveId() throws {
        let input = "name=John Trust, username=john3, email=john3@gmail.com, id=434453;"
        XCTAssertEqual(FilterMovies.Solution1(input: input), "name=John Trust, username=john3, email=john3@gmail.com;")
    }
    
    func testValidCasesSolution1_RemoveId_2() {
        let input = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Hannah Smith, username=hsmith, email=hsm@test.com, id=23312;"
        let result = "name=John Trust, username=john3, email=john3@gmail.com; name=Hannah Smith, username=hsmith, email=hsm@test.com;"
        XCTAssertEqual(FilterMovies.Solution1(input: input), result)
    }
            
    func testValidCasesSolution1_RemoveDuplicates() {
        let input = "name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com;"
        let result = "name=Susan Vee, username=sv55, email=susanv123@me.com;"
        XCTAssertEqual(FilterMovies.Solution1(input: input), result)
    }
    
    func testValidCasesSolution1_KeepAll() {
        let input = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Robert Nick II, username=rnickTemp34, id=23432, email=rnick@gmail.com;"
        let result = "name=John Trust, username=john3, email=john3@gmail.com; name=Susan Vee, username=sv55, email=susanv123@me.com; name=Robert Nick II, username=rnickTemp34, email=rnick@gmail.com;"
        XCTAssertEqual(FilterMovies.Solution1(input: input), result)
    }
    
    //TODO: Failing, need to work on it
    func testValidCasesSolution1_RemoveID_RemoveDuplicates() {
        let input = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Hannah Smith, username=hsmith, email=hsm@test.com, id=23312; name=Hannah Smith, username=hsmith, id=3223423, email=hsm@test.com; name=Robert M, username=rm44, id=222342, email=rm@me.com; name=Robert M, username=rm4411, id=5535, email=rm@me.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Robert Nick, username=rnick33, id=23432, email=rnick@gmail.com; name=Robert Nick II, username=rnickTemp34, id=23432, email=rnick@gmail.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com;"

        let result = "name=John Trust, username=john3, email=john3@gmail.com; name=Robert M, username=rm4411, email=rm@me.com; name=Robert Nick, username=rnick33, email=rnick@gmail.com; name=John Trust, username=john3, email=john3@gmail.com; name=Hannah Smith, username=hsmith, email=hsm@test.com; name=Robert Nick II, username=rnickTemp34, email=rnick@gmail.com; name=Robert M, username=rm44, email=rm@me.com; name=Susan Vee, username=sv55, email=susanv123@me.com;"

        XCTAssertEqual(FilterMovies.Solution1(input: input), result)
    }

}
