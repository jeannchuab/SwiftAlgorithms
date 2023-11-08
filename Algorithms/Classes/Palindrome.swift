//
//  Palindrome.swift
//  Algorithms
//
//  Created by Jeann Luiz Chuab on 08/06/22.
//

import Foundation

/*
 Given a string, return true if the is string is the same reversed (Palindrome)
 Ignore uppercase/downcase
 
 Example:
 
 Baab = true
 Aleela = true
 Arara = true
 Abccba = true
 
 */

class Palindrome {
    
    //TODO: Working in progress
    
//    static func solution1(input: String) -> Bool {
//        
//        let array = Array(input)
//        
//        guard array.count > 1 else { return true }
//        
//        if array.count <= 3 {
//            if array[0] != array[array.count - 1] {
//                return false
//            }
//        } else {
//            for i in 0..<array.count/2 {
//                
//                if array[i] != array[array.count - i] {
//                    return false
//                }
//                
//            }
//        }
//        
//        return true
//    }
    
    static func solution2(input: String) -> Bool {
        return input.lowercased().reversed() == Array(input.lowercased())
    }
}
