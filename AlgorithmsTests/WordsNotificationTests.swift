//
//  WordsNotificationTests.swift
//  AlgorithmsTests
//
//  Created by Jeann Luiz Chuab on 16/07/24.
//

import XCTest
@testable import Algorithms

final class WordsNotificationTests: XCTestCase {

//    func testResultsOption1() throws {
//        // Examples for testing
//        var message1 = "And now here is my secret"
//        XCTAssertEqual(WordsNotification.solution1(message: &message1, K: 15), "And now ...")
//
//        var message2 = "There is an animal with four legs"
//        XCTAssertEqual(WordsNotification.solution1(message: &message2, K: 15), "There is an ...")
//
//        var message3 = "super dog"
//        XCTAssertEqual(WordsNotification.solution1(message: &message3, K: 4), "...")
//
//        var message4 = "how are you"
//        XCTAssertEqual(WordsNotification.solution1(message: &message4, K: 4), "how are you")
//    }
    
    func testResultsOption2() throws {
        // Examples for testing
        var message1 = "And now here is my secret"
        XCTAssertEqual(WordsNotification.solution2(message: &message1, K: 15), "And now ...")

        var message2 = "There is an animal with four legs"
        XCTAssertEqual(WordsNotification.solution2(message: &message2, K: 15), "There is an ...")

        var message3 = "super dog"
        XCTAssertEqual(WordsNotification.solution2(message: &message3, K: 4), "...")

        var message4 = "how are you"
        XCTAssertEqual(WordsNotification.solution2(message: &message4, K: 20), "how are you")
        
        var longMessage = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing el.
        """

        XCTAssertEqual(WordsNotification.solution2(message: &longMessage, K: 9), "Lorem ...")
        
        XCTAssertEqual(WordsNotification.solution2(message: &longMessage, K: 500), longMessage)
        
        XCTAssertEqual(WordsNotification.solution2(message: &longMessage, K: 3), "...")
    }

}
