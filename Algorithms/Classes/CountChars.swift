//
//  CountChars.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 17/08/22.
//

import Foundation

/*
 Write a function that accepts a string, and returns how many times a specific character appears taking case into account
 */

class CountChar {
    static func option1(input: String, char: Character) -> Int {
        var count = 0
        for letter in input {
            if letter == char {
                count += 1
            }
        }
        return count
    }
    
    static func option2(input: String, char: Character) -> Int {
        return input.filter { $0 == char }.count
    }
    
    //This runs 10% slower then the option1
    static func option3(input: String, char: Character) -> Int {
        return input.reduce(0) { index, value in
            value == char ? index + 1 : index
        }
    }

    //This is not working
    static func option4(input: String, char: Character) -> Int {
        let array = input.map { String($0) }
        let counted = NSCountedSet(array: array)
        return counted.count(for: char)
    }
        
    //Try to solve with replace occurrence
//    static func option5(input: String, char: String) -> Int {
//        let modified = input.replaceOccurrence
//        return input.count - modified.count
//    }
}
