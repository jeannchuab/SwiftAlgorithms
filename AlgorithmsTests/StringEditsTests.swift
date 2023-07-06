//
//  StringEditsTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz on 06/07/23.
//

import XCTest
@testable import Algorithms

class StringEditsTests: XCTestCase {
    func testOneEdit() throws {
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "paleXXX"), false)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "ple"), true)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pales", input2: "pale"), true)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "bale"), true)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "bake"), false)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "bakererer"), false)
        XCTAssertEqual(StringEdits.oneEdit(input1: "pale", input2: "p"), false)
        XCTAssertEqual(StringEdits.oneEdit(input1: "p", input2: "pale"), false)
    }
}
