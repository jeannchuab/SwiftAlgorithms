//
//  MaximumSumSubArray.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 03/07/23.
//

import XCTest
@testable import Algorithms
//import Maxi

class MaximumSumSubArrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testResults() throws {
//        XCTAssertEqual(MaximumsSumSubarray.option1(input: [1,2]), [1,2])
//        XCTAssertEqual(MaximumsSumSubarray.option1(input: [1,2,3]), [2,3])
        XCTAssertEqual(MaximumsSumSubarray.option1(input: [1,-2,2,3,5,89,0,-5]), [5,89])
        XCTAssertEqual(MaximumsSumSubarray.option1(input: [101,1,-2,2,3,5,89,0,-5]), [101,1])
        XCTAssertEqual(MaximumsSumSubarray.option1(input: [1,-2,2,3,5,89,0,-5,101]), [-5,101])
        
//        XCTAssertNotEqual(MaximumsSumSubarray.option1(input: [1,2,3]), [3])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
