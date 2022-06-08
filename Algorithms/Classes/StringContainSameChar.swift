//
//  StringContainSameChar.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation

class StringContainSameChar {
    
    /* Function that return true if both parameters contain the same chars in any order,
        taking into account letter case
     
        Examples:
            "abc" and "abca" should return false
            "abc" and "abc" should return true
            "abc" and "cba" should return true
            "a1 b2" and "b 1 a 2" should return true
     */
    
//    static func option1() {
//      //We could loop thought the string removing each letter, but will be O(n)
//    }
    
    static func option1(input1: String, input2: String) -> Bool {
        return Array(input1).sorted() == Array(input2).sorted()
    }
    
}
